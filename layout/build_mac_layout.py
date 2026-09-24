"""Place MUL above the intact FA within the 1800 x 1000 um core allocation."""
import klayout.db as db
from arithmetic_helpers import ROOT,import_tree,Route,port

ALLOCATION_UM=(0,0,1800,1000)

def build():
 ly=db.Layout();ly.dbu=.001;ly.technology_name='TR-1um';top=ly.create_cell('mac');d=Route(ly,top)
 sources=[ROOT/'mul.gds',ROOT/'full_adder.gds',ROOT/'inverter.gds']
 mul=import_tree(ly,sources[0],'mul');fa=import_tree(ly,sources[1],'full_adder')
 inv=ly.cell('inverter');assert inv is not None
 fd=Route(ly,fa);labels={s.text.string for s in fa.shapes(ly.layer(48,0)).each() if s.is_text()};restored=[]
 for n,x,y in [('a',-128.45,29.5),('b',-128.75,36.1)]:
  if n not in labels:fd.label('M1',n,x,y);restored.append(n)
 d.instance(mul,'x_mul',20,420);d.instance(fa,'x_fa',180,123.2)
 d.instance(inv,'x_and',600,520)
 d.route('nmin','M1',[(496,570),(560,570),(560,545),(602,545)])
 d.route('or_out','M1',[(496,582),(540,582),(540,600)])
 d.route('and_out','M2',[(682,558.5),(700,558.5)]);d.via('and_out',700,558.5)
 d.route('and_out','M1',[(700,558.5),(706,558.5)])
 d.via('VDD',672,584.3);d.route('VDD','M2',[(672,584.3),(672,770)]);d.via('VDD',672,770)
 d.route('VSS','M1',[(601.7,521.7),(588,521.7)]);d.via('VSS',588,521.7)
 d.route('VSS','M2',[(588,521.7),(588,776)]);d.via('VSS',588,776)
 # Product travels through the gap between the two macros, then enters FA.b.
 d.route('p','M1',[(496,588),(510,588)]);d.via('p',510,588)
 d.route('p','M2',[(510,588),(510,380)]);d.via('p',510,380)
 d.route('p','M1',[(24,380),(510,380)]);d.via('p',24,380)
 d.route('p','M2',[(24,380),(24,159.3)]);d.via('p',24,159.3)
 d.route('p','M1',[(24,159.3),(51.25,159.3)])
 d.route('x','M1',[(51.55,152.7),(32,152.7)]);d.via('x',32,152.7)
 d.route('x','M2',[(32,152.7),(32,392)])
 d.route('cin','M1',[(800.9,158.95),(769,158.95)]);d.via('cin',769,158.95)
 d.route('cin','M2',[(769,158.95),(769,392)])
 d.route('cout','M1',[(1756.25,64.1),(1770,64.1)])
 for net,y,end in [('VDD',770,678),('VSS',776,594),('VMID',782,8)]:d.route(net,'M1',[(2,y),(end,y)])
 # MUL's original M2 power spines extended above its top edge.
 for net,x,lo,hi in [('VDD',24,744.3,770),('VSS',30,621.7,776)]:
  d.route(net,'M2',[(x,lo),(x,hi)]);d.via(net,x,hi)
 # FA power spines stay to the left of both child macros.
 for net,px,py,ex,hi in [('VDD',56.85,338.7,8,770),('VSS',56.85,227.35,14,776),('VMID',58.35,207,2,782)]:
  d.route(net,'M1',[(px,py),(ex,py)]);d.via(net,ex,py)
  d.route(net,'M2',[(ex,py),(ex,hi)]);d.via(net,ex,hi)
 ports={n:port(d,n,l,x,y) for n,l,x,y in [('and_out','M1',706,558.5),('or_out','M1',540,600),('a','M1',40,558),('b','M1',40,564),('x','M2',32,392),('cin','M2',769,392),('sum','M1',1520.9,201.3),('cout','M1',1770,64.1),('VDD','M1',678,770),('VSS','M1',594,776),('VMID','M1',8,782)]}
 b=top.dbbox();assert b.left>=0 and b.bottom>=0 and b.right<=1800 and b.top<=1000,b
 d.save('mac',ports,sources,dict(device_counts=dict(PMOS=57,NMOS=57,F_RR=42),embedded_fa_labels_restored=restored,allocation_um=list(ALLOCATION_UM),fits_allocation=True,scope='Core macro without pad frame or interconnect RC extraction'))
if __name__=='__main__':build()
