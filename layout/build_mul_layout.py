"""Route a hierarchical MUL from its separately qualified gate variants."""
import json
import klayout.db as db
from arithmetic_helpers import ROOT,import_tree,Route,port

def build():
 ly=db.Layout();ly.dbu=.001;ly.technology_name='TR-1um';top=ly.create_cell('mul');d=Route(ly,top)
 sources=[ROOT/f'mul_{k}.gds' for k in ('nand','nor','inv')]
 cells={k:import_tree(ly,ROOT/f'mul_{k}.gds','mul_'+k) for k in ('nand','nor','inv')}
 meta={k:json.loads((ROOT/f'layout/mul_{k}.ports.json').read_text()) for k in cells}
 tracks={n:138+6*i for i,n in enumerate(('a','b','t1','t2','t3','p'))};ends={n:[] for n in tracks}
 places=[('x_t1','nand',40,200,{'a':'a','b':'b','vout':'t1'}),('x_t2','nor',60,0,{'a':'a','b':'b','vout':'t2'}),('x_t3','inv',220,0,{'vin':'t2','vout':'t3'}),('x_p','nand',340,200,{'a':'t1','b':'t3','vout':'p'})]
 for role,kind,x,y,pins in places:
  d.instance(cells[kind],role,x,y);ports=meta[kind]['ports'];width=meta[kind]['width_um']
  for pin,net in pins.items():
   px,py=ports[pin]['position_um'];px+=x;py+=y;layer='M1' if ports[pin]['layer']==[13,0] else 'M2'
   if pin=='vout':ex=x+width+6
   elif pin=='vin':ex=x-18
   else:ex=x-({'a':12,'b':18}[pin] if y else {'a':18,'b':12}[pin])
   d.route(net,layer,[(px,py),(ex,py)])
   if layer=='M1':d.via(net,ex,py)
   d.route(net,'M2',[(ex,py),(ex,tracks[net])]);d.via(net,ex,tracks[net]);ends[net].append(ex)
  if kind=='inv':d.route('VDD','M1',[(x+width-1.7,64.3),(x+width+12,64.3),(x+width+12,124.3)])
 for y in (0,200):
  for net,yy,x in [('VSS',y+1.7,10),('VDD',y+124.3,4)]:d.box('M1',0,yy-1.7,480,yy+1.7);d.via(net,x,yy)
 d.route('VDD','M2',[(4,124.3),(4,324.3)]);d.route('VSS','M2',[(10,1.7),(10,201.7)])
 ports={}
 for net,yy in tracks.items():
  xs=ends[net].copy()
  if net in ('a','b'):xs.append(20)
  if net=='p':xs.append(476)
  d.route(net,'M1',[(min(xs),yy),(max(xs),yy)])
  if net in ('a','b','p'):ports[net]=port(d,net,'M1',476 if net=='p' else 20,yy)
 for net,yy in [('VDD',324.3),('VSS',1.7)]:ports[net]=port(d,net,'M1',476,yy)
 assert top.dbbox()==db.DBox(0,0,480,326)
 d.save('mul',ports,sources,dict(device_counts=dict(PMOS=7,NMOS=7,F_RR=8)))
if __name__=='__main__':build()
