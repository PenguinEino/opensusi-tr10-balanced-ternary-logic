"""Publish a concise summary only after all arithmetic verification is complete."""
from pathlib import Path
from collections import Counter
import json
import check_mac as logic
import verify_arithmetic_layout as verify
from check_full_adder_extracted import normalized
from check_half_adder_extracted import subckts
ROOT=logic.ROOT

def main():
 reports={n:json.loads((ROOT/f'reports/{n}.json').read_text()) for n in ('mac','mac_extracted','mac_layout','mac_driver','arithmetic_gui','arithmetic_pcell_audit')}
 for n in ('mac','mac_extracted','mac_driver','arithmetic_gui','arithmetic_pcell_audit'):assert reports[n]['passed'],n
 layout=reports['mac_layout'];assert layout['drawing_lvs_passed']
 digest=logic.sha(ROOT/'mac.gds');assert layout['gds_sha256']==reports['mac_extracted']['gds_sha256']==reports['mac_driver']['source_sha256']==digest
 assert reports['arithmetic_gui']['cells']['mac']['gds_sha256']==reports['arithmetic_pcell_audit']['cells']['mac']['gds_sha256']==digest
 assert logic.sha(verify.reference('mac'))==layout['reference_sha256']==reports['mac_extracted']['reference_sha256']
 for n,h in reports['mac']['source_sha256'].items():assert logic.sha(ROOT/n)==h,n
 for n,h in reports['mac']['model_sha256'].items():assert logic.sha(verify.PDK/n)==h,n
 assert reports['mac']['model_sha256']==reports['mac_extracted']['model_sha256']
 assert logic.sha(ROOT/'mac.extracted')==reports['mac_extracted']['extracted_sha256']
 defs=subckts(normalized((ROOT/'mac.extracted').read_text()))
 def count(name):
  c=Counter()
  for l in defs[name]['lines']:
   if l[-1].lower() in defs:c.update(count(l[-1].lower()))
   elif len(l)>5 and l[5] in ('PMOS','NMOS'):c[l[5]]+=1
   elif len(l)>4 and l[4]=='F_RR':c['F_RR']+=1
  return c
 devices=dict(count('mac'));assert devices==dict(PMOS=56,NMOS=56,F_RR=40)
 rows=[]
 for n,label in [('mac','回路図'),('mac_extracted','抽出回路')]:
  cases=reports[n]['cases'];assert len(cases)==3 and [r['transitions'] for r in cases]==[81,6480,648]
  for r,mode in zip(cases,['81入力＋復帰','全6,480遷移','1入力648遷移']):
   assert r['passed'] and r['unsettled']==0
   rows.append(dict(scope=label,mode=mode,load_fF=r['load_fF'],max_error_mV=1000*r['max_output_error_V'],max_settle_ns=r['max_settle_ns']))
 summary=dict(passed=True,gds_sha256=digest,device_counts=devices,bbox_um=layout['bbox_um'],drawing_drc_items=0,strict_lvs_passed=True,standalone_mask_categories=layout['mask_drc']['categories'],driven_fixture_mask_items=reports['mac_driver']['mask_drc']['items'],cases=rows,
  max_product_error_V=max(r['max_product_error_V'] for n in ('mac','mac_extracted') for r in reports[n]['cases']),scope='Nominal 27 C ideal rails. Device extraction, no wire RC, no pad frame, no 5-chip chain test.')
 (ROOT/'reports/mac_summary.json').write_text(json.dumps(summary,indent=2)+'\n')
 lines=['## 検証結果（2026-09-24）','', '| 回路 | 試験 | 負荷 | 最大出力誤差 | 最大整定時間 | 判定 |','|---|---|---:|---:|---:|---|']
 for r in rows:lines.append(f"| {r['scope']} | {r['mode']} | {r['load_fF']} fF | {r['max_error_mV']:.3f} mV | {r['max_settle_ns']:.2f} ns | PASS |")
 lines+=['',f"内部の積Pも各状態で確認し、最大誤差は {summary['max_product_error_V']*1000:.1f} mV。",'表の整定時間は波形サンプルによる値であり、最大時間刻みより細かい精度を保証しない。','今回は単体算術コアの検証。5チップ直列接続の負荷・遅延は含まない。','']
 path=ROOT/'MAC.md';s=path.read_text();mark='<!-- verification-results -->';s=s.split(mark)[0].rstrip()+'\n\n'+mark+'\n'+'\n'.join(lines);path.write_text(s)
 print(json.dumps(summary,ensure_ascii=False,indent=2))
if __name__=='__main__':main()
