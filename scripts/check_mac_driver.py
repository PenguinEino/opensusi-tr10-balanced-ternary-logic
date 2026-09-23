"""Separate physically driven fixture: distinguish floating input warnings from core faults."""
from concurrent.futures import ThreadPoolExecutor
import json,sys
import klayout.db as db
import verify_arithmetic_layout as verify
sys.path.insert(0,str(verify.ROOT/'layout'))
from arithmetic_helpers import Route,port

def main():
 root=verify.ROOT;ly=db.Layout();ly.read(str(root/'mac.gds'));mac=ly.cell('mac')
 top=ly.create_cell('mac_driver_check');top.insert(db.CellInstArray(mac.cell_index(),db.Trans()));d=Route(ly,top)
 # a/b reach the MUL's VDD spine at x=4. x/cin reach the global VDD bus.
 for net,y in [('a',138),('b',144)]:d.route(net,'M1',[(4,y),(20,y)]);d.via(net,4,y)
 for net,x in [('x',492),('cin',1229)]:d.route(net,'M2',[(x,350),(x,365)]);d.via(net,x,365)
 for n,l,x,y in [('sum','M1',1980.9,201.3),('cout','M1',2230,64.1),('VDD','M1',2230,365),('VSS','M1',2230,371),('VMID','M1',2230,377)]:port(d,n,l,x,y)
 folder=verify.WORK/'mac_driver';folder.mkdir(parents=True,exist_ok=True);gds=folder/'driver.gds';ly.write(str(gds))
 ref=folder/'reference.spice';ref.write_text(verify.reference('mac').read_text()+'\n.subckt mac_driver_check sum cout VDD VSS VMID\nXdut VDD VDD VDD VDD sum cout VDD VSS VMID mac\n.ends\n')
 with ThreadPoolExecutor(max_workers=3) as pool:
  fs=[pool.submit(verify.drc,gds,top.name,folder/'drawing'),pool.submit(verify.lvs,top.name,gds,ref,folder/'lvs'),pool.submit(verify.mask,gds,top.name,folder/'manufacturing')]
  r=dict(source_sha256=verify.sha(root/'mac.gds'),scope='Separate fixture tying the four external inputs to VDD. Functional MAC unchanged. No waivers.',**dict(zip(('drawing_drc','lvs','mask_drc'),[f.result() for f in fs])))
 r['passed']=all(r[k]['passed'] for k in ('drawing_drc','lvs','mask_drc'));(root/'reports/mac_driver.json').write_text(json.dumps(r,indent=2)+'\n');print(json.dumps(r,indent=2))
 if not r['passed']:raise RuntimeError('Driver fixture failed')
if __name__=='__main__':main()
