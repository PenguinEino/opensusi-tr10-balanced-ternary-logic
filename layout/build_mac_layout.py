"""Self-contained hierarchical multiply-add core; keep the user's FA source intact."""
import klayout.db as db
from arithmetic_helpers import ROOT,import_tree,Route,port

def build():
 ly=db.Layout();ly.dbu=.001;ly.technology_name='TR-1um';top=ly.create_cell('mac');d=Route(ly,top)
 sources=[ROOT/'mul.gds',ROOT/'full_adder.gds']
 mul=import_tree(ly,sources[0],'mul');fa=import_tree(ly,sources[1],'full_adder')
 # Restore explicit interface labels only in this local copy of the FA.
 fd=Route(ly,fa);labels={s.text.string for s in fa.shapes(ly.layer(48,0)).each() if s.is_text()}
 restored=[]
 for n,x,y in [('a',-128.45,29.5),('b',-128.75,36.1)]:
  if n not in labels:fd.label('M1',n,x,y);restored.append(n)
 d.instance(mul,'x_mul',0,0);d.instance(fa,'x_fa',640,123.2)
 d.route('p','M1',[(476,168),(486,168)]);d.via('p',486,168)
 d.route('p','M2',[(486,168),(486,159.3)]);d.via('p',486,159.3);d.route('p','M1',[(486,159.3),(511.25,159.3)])
 d.route('x','M1',[(511.55,152.7),(492,152.7)]);d.via('x',492,152.7);d.route('x','M2',[(492,152.7),(492,350)])
 d.route('cin','M1',[(1260.9,158.95),(1229,158.95)]);d.via('cin',1229,158.95);d.route('cin','M2',[(1229,158.95),(1229,350)])
 d.route('cout','M1',[(2216.25,64.1),(2230,64.1)])
 for net,y in [('VDD',365),('VSS',371),('VMID',377)]:d.route(net,'M1',[(0,y),(2230,y)])
 for net,x,lo,hi in [('VDD',4,324.3,365),('VSS',10,201.7,371)]:d.route(net,'M2',[(x,lo),(x,hi)]);d.via(net,x,hi)
 for net,px,py,ex,hi in [('VDD',516.85,338.7,500,365),('VSS',516.85,227.35,484,371),('VMID',518.35,207,508,377)]:
  d.route(net,'M1',[(px,py),(ex,py)]);d.via(net,ex,py);d.route(net,'M2',[(ex,py),(ex,hi)]);d.via(net,ex,hi)
 ports={n:port(d,n,l,x,y) for n,l,x,y in [('a','M1',20,138),('b','M1',20,144),('x','M2',492,350),('cin','M2',1229,350),('sum','M1',1980.9,201.3),('cout','M1',2230,64.1),('VDD','M1',2230,365),('VSS','M1',2230,371),('VMID','M1',2230,377)]}
 d.save('mac',ports,sources,dict(device_counts=dict(PMOS=56,NMOS=56,F_RR=40),embedded_fa_labels_restored=restored,scope='Core macro without pad frame or interconnect RC extraction'))
if __name__=='__main__':build()
