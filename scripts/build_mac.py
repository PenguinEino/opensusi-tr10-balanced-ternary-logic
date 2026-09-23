"""Build the combinational multiply-add slice X+A*B+Cin=S+3*Cout."""
from pathlib import Path
import itertools
from build_ternary_sram import Sch,start,measure,finish
ROOT=Path(__file__).resolve().parents[1]
STATES=list(itertools.product((-5,0,5),repeat=4))
def oracle(x,a,b,cin):
 total=x//5+(a//5)*(b//5)+cin//5;c=(total+1)//3
 return (total-3*c)*5,c*5

def nodesets():
 def nany(a,b):return -5*((a+b>0)-(a+b<0))
 lines=['.nodeset v(xdut.p)=5 v(xdut.x_mul.t1)=5 v(xdut.x_mul.t2)=5 v(xdut.x_mul.t3)=-5',
        '.nodeset v(sum)=-5 v(cout)=0 v(xdut.x_fa.s1)=0 v(xdut.x_fa.c1)=0 v(xdut.x_fa.c2)=0 v(xdut.x_fa.nc)=0']
 def prim(prefix,kind):
  vals=[5,5,-5,-5,0,0] if kind=='nany' else [5,-5]
  lines.append('.nodeset '+' '.join(f'v({prefix}.net{k})={v}' for k,v in enumerate(vals,1)))
 for role,a,b in [('x_ha1',-5,5),('x_ha2',0,-5)]:
  p='xdut.x_fa.'+role;t=nany(a,b);u=nany(b,t);na=-a;c=nany(na,u);d=nany(t,c);nd=-d
  lines.append('.nodeset '+' '.join(f'v({p}.{k})={v}' for k,v in dict(t=t,u=u,na=na,d=d,nd=nd).items()))
  for role2 in ('x_t','x_u','x_c','x_d','x_s'):prim(p+'.'+role2,'nany')
  for role2 in ('x_na','x_nd'):prim(p+'.'+role2,'inverter')
 prim('xdut.x_fa.x_cmerge','nany');prim('xdut.x_fa.x_cout','inverter')
 return '\n'.join(lines)

def build():
 s=Sch('BALANCED TERNARY MULTIPLY-ADD / X + A*B + Cin = Sum + 3*Cout')
 s.text(40,-80,'Combinational 1-trit slice: mul -> full_adder. No state, accumulator, or mode MUX.')
 s.comp(str(ROOT/'mul.sym'),330,340,'name=x_mul');s.comp(str(ROOT/'full_adder.sym'),800,340,'name=x_fa')
 for x,y,net,kind in [(120,320,'a','ipin'),(120,360,'b','ipin'),(120,220,'x','ipin'),(120,460,'cin','ipin'),(1080,320,'sum','opin'),(1080,360,'cout','opin')]:s.label(x,y,net,kind)
 for x,y,xx,yy,net in [(120,320,270,320,'a'),(120,360,270,360,'b'),(400,340,710,340,'p'),(120,220,650,220,'x'),(650,220,650,300,'x'),(650,300,710,300,'x'),(120,460,650,460,'cin'),(650,380,650,460,'cin'),(650,380,710,380,'cin'),(890,320,1080,320,'sum'),(890,360,1080,360,'cout')]:s.wire(x,y,xx,yy,net)
 s.label(530,340,'p')
 for x,y,net in [(330,280,'VDD'),(330,400,'VSS'),(800,250,'VDD'),(800,430,'VSS'),(830,450,'VMID')]:s.label(x,y,net)
 for k,net in enumerate(('VDD','VSS','VMID')):s.label(180+250*k,610,net,'iopin')
 for i,t in enumerate(['B=+5 V: X+A+Cin (ADD/FA); B=-5 V: X-A+Cin (SUB).','X=Cin=0 V: Sum=A*B; Cout=0 (MUL).','Levels -5/0/+5 V encode -1/0/+1. Power: VDD=+5 V, VMID=0 V, VSS=-5 V.','MUL: 14 MOS + 8 RR. FA: 98 MOS + 32 RR. Total: 112 MOS + 40 RR.','No internal load capacitors. Add output loading in the TB.']):s.text(40,720+45*i,t)
 s.save('mac')
 pins=[('x','in',-120,-60),('a','in',-120,-20),('b','in',-120,20),('cin','in',-120,60),('sum','out',120,-20),('cout','out',120,20),('VDD','inout',0,-130),('VSS','inout',0,130),('VMID','inout',40,150)]
 sym='v {xschem version=3.4.8RC file_version=1.3}\nK {type=subcircuit\nformat="@name @pinlist @symname"\ntemplate="name=x1"}\nG {}\nV {}\nS {}\nE {}\n'
 sym+='L 4 -80 -90 80 -90 {}\nL 4 80 -90 80 90 {}\nL 4 80 90 -80 90 {}\nL 4 -80 90 -80 -90 {}\nT {MADD} -35 -10 0 0 0.26 0.26 {}\nT {@name} 10 -160 0 0 0.2 0.2 {}\n'
 for name,d,x,y in pins:
  xx=max(-80,min(80,x));yy=max(-90,min(90,y))
  sym+=f'L 4 {x} {y} {xx} {yy} {{}}\nB 5 {x-2.5} {y-2.5} {x+2.5} {y+2.5} {{name={name} dir={d}}}\n'
  tx=-73 if x<0 else 38 if x==120 else x+5;ty=y-15 if abs(x)==120 else yy+5 if y<0 else yy-23
  sym+=f'T {{{name}}} {tx} {ty} 0 0 0.17 0.17 {{}}\n'
 (ROOT/'mac.sym').write_text(sym)
 s=Sch('MULTIPLY-ADD SLICE / all 81 input combinations / X+A*B+Cin=Sum+3*Cout')
 s.text(40,-80,'27 C; +/-5 V and 0 V supplies; 10 fF on Sum and Cout; 1 ns edges, 200 ns slots.')
 s.comp(str(ROOT/'mac.sym'),400,250,'name=xdut')
 for net,d,dx,dy in pins:s.label(400+dx,250+dy,net)
 s.cap('Csum','sum','10f',740,240);s.cap('Ccout','cout','10f',960,240)
 for i,(nm,net,v) in enumerate([('VDD','VDD',5),('VSS','VSS',-5),('VMID','VMID',0)]):s.source(nm,net,str(v),120+280*i,540)
 seq=STATES+[STATES[0]]
 for j,net in enumerate(('x','a','b','cin')):
  pts=[f'0 {seq[0][j]}']
  for k in range(1,len(seq)):pts.extend([f'{200*k}n {seq[k-1][j]}',f'{200*k+1}n {seq[k][j]}'])
  pts.append(f'{200*len(seq)}n {seq[-1][j]}');s.source('V'+net.upper(),net,'PWL('+' '.join(pts)+')',100+280*j,790)
 s.text(40,900,'Each 27-state block fixes X and enumerates A, B, Cin in -5/0/+5 order.')
 s.text(40,945,'After state 80, return to (-5,-5,-5,-5) in slot 81; sample at 16399 ns.')
 s.text(40,990,'RUN: disable LVS -> Netlist -> Simulate. Native voltage plots and PASS/FAIL log.')
 s.text(40,1035,'External samples allow logic to settle. No guarantee of glitch-free transitions.')
 for j,xval in enumerate((-5,0,5)):
  x=1230+650*j;s.text(x,-90,f'X={xval:+} V / 27 states',.29);s.text(x,-45,'A     B    Cin   Sum   Cout   Sample(ns)',.22)
  for row,state in enumerate(STATES[27*j:27*j+27]):
   _,a,b,cin=state;su,co=oracle(*state);k=27*j+row
   s.text(x,0+32*row,f'{a:+}    {b:+}    {cin:+}      {su:+}      {co:+}       {200*k+199}',.22)
 ctrl=start('.options rshunt=1e12\n'+nodesets())+'tran 0.5n 16400n 0 1n\n'
 for k,state in enumerate(seq):
  su,co=oracle(*state)
  for net,target in [('sum',su),('cout',co),('xdut.p',state[1]*state[2]/5)]:ctrl+=measure(f'tran_{k}_{net.replace(".","_")}',net,200*k+199,target)
 ctrl+="plot v(x) v(a) v(b) v(cin) v(sum) ylimit -5.5 5.5 title 'Multiply-add SUM: all 81 states'\nplot v(x) v(a) v(b) v(cin) v(cout) ylimit -5.5 5.5 title 'Multiply-add COUT: all 81 states'\nplot v(xdut.p) v(sum) v(cout) title 'MUL product and multiply-add outputs'\nwrdata mac_tran.txt v(x) v(a) v(b) v(cin) v(sum) v(cout) v(xdut.p)\n"+finish('multiply-add all 81 states')
 s.setup(ctrl,1300,1050)
 # Xschem includes hidden instance text in Zoom Full's bounding box.
 s.s=s.s.replace('hide_texts=true}', 'hide_texts=true text_size_1=0.001}')
 s.save('mac_tb')
if __name__=='__main__':build()
