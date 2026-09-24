"""Place MUL above the intact FA within the 1800 x 1000 um core allocation."""
import klayout.db as db
from arithmetic_helpers import ROOT,import_tree,Route,port

ALLOCATION_UM=(0,0,1800,1000)
VDD_Y=744.3  # Align with the upper MUL VDD rail.
VSS_Y=804.3  # Preserve 60 um center spacing between the 44 um main rails.

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
 d.instance(inv,'x_or1',920,520);d.instance(inv,'x_or2',1080,520)
 d.route('nmin','M1',[(496,570),(560,570),(560,545),(602,545)])
 d.route('or_raw','M1',[(496,582),(540,582),(540,610),(900,610)])
 d.via('or_raw',900,610);d.route('or_raw','M2',[(900,610),(900,545)]);d.via('or_raw',900,545)
 d.route('or_raw','M1',[(900,545),(922,545)])
 d.route('or_n','M2',[(1014,558.5),(1040,558.5)]);d.via('or_n',1040,558.5)
 d.route('or_n','M1',[(1040,558.5),(1040,545),(1082,545)])
 d.route('or_out','M2',[(1174,558.5),(1190,558.5)]);d.via('or_out',1190,558.5)
 d.route('or_out','M1',[(1190,558.5),(1200,558.5)])
 d.route('and_out','M2',[(682,558.5),(700,558.5)]);d.via('and_out',700,558.5)
 d.route('and_out','M1',[(700,558.5),(706,558.5)])
 for x in (600,920,1080):
  d.via('VDD',x+72,584.3);d.route('VDD','M2',[(x+72,584.3),(x+72,VDD_Y)]);d.via('VDD',x+72,VDD_Y)
  d.route('VSS','M1',[(x+1.7,521.7),(x-12,521.7)]);d.via('VSS',x-12,521.7)
  d.route('VSS','M2',[(x-12,521.7),(x-12,VSS_Y)]);d.via('VSS',x-12,VSS_Y)
 # Product travels through the gap between the two macros, then enters FA.b.
 d.route('p','M1',[(496,588),(510,588)]);d.via('p',510,588)
 d.route('p','M2',[(510,588),(510,378)]);d.via('p',510,378)
 d.route('p','M1',[(24,378),(510,378)]);d.via('p',24,378)
 d.route('p','M2',[(24,378),(24,159.3)]);d.via('p',24,159.3)
 d.route('p','M1',[(24,159.3),(51.25,159.3)])
 d.route('x','M1',[(51.55,152.7),(32,152.7)]);d.via('x',32,152.7)
 d.route('x','M2',[(32,152.7),(32,392)])
 d.via('cin',800.9,158.95)
 d.route('cin','M2',[(800.9,158.95),(800.9,392)])
 d.route('cout','M1',[(1756.25,64.1),(1770,64.1)])
 def array(net,x,y,nx=3,ny=8):
  for j in range(ny):
   for i in range(nx):d.via(net,x+4*(i-(nx-1)/2),y+4*(j-(ny-1)/2))
  for layer in ('M1','M2'):d.box(layer,x-2*(nx-1)-1.7,y-2*(ny-1)-1.7,x+2*(nx-1)+1.7,y+2*(ny-1)+1.7)
 # Main feeds: 44 um M1, 14 um M2, and 24-cut arrays at both ends.
 for net,x,low,high in [('VDD',880,358.2,VDD_Y),('VSS',830,398.2,VSS_Y)]:
  d.route(net,'M1',[(560,high),(1720,high)],44)
  d.route(net,'M2',[(x,low),(x,high)],14)
  array(net,x,low);array(net,x,high)
 # MUL and both HAs share this return: 8.145 mA on the left branch,
 # 9.040 mA including the merge/Cout branch at the main VSS landing.
 # 40 um gives a conservative 10 mA M1-over-step continuous allowance.
 # Start beyond x=520 to clear the product signal at (510,378).
 d.route('VSS','M1',[(540,398.2),(850,398.2)],40)
 # MUL gets its own VDD feed; its bottom VSS rail overlaps the FA VSS trunk.
 # Same-layer feed removes the old M2 rise and its three via arrays.
 # This branch carries only MUL current, not the downstream FA/INV loads.
 d.route('VDD','M1',[(24,VDD_Y),(560,VDD_Y)],11.4)
 # VMID is a signal reference / clamp return, never the substrate supply.
 d.route('VMID','M1',[(58.35,207),(8,207)]);d.via('VMID',8,207)
 d.route('VMID','M2',[(8,207),(8,820)]);d.via('VMID',8,820)
 d.route('VMID','M1',[(8,820),(100,820)])
 ports={n:port(d,n,l,x,y) for n,l,x,y in [('and_out','M1',706,558.5),('or_out','M1',1200,558.5),('a','M1',40,558),('b','M1',40,564),('x','M2',32,392),('cin','M2',800.9,392),('sum','M1',1520.9,201.3),('cout','M1',1770,64.1),('VDD','M1',1720,VDD_Y),('VSS','M1',1720,VSS_Y),('VMID','M1',100,820)]}
 b=top.dbbox();assert b.left>=0 and b.bottom>=0 and b.right<=1800 and b.top<=1000,b
 d.save('mac',ports,sources,dict(device_counts=dict(PMOS=59,NMOS=59,F_RR=46),embedded_fa_labels_restored=restored,allocation_um=list(ALLOCATION_UM),fits_allocation=True,scope='Core macro without pad frame or interconnect RC extraction'))
if __name__=='__main__':build()
