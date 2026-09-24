v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {BALANCED TERNARY MULTIPLY-ADD / X + A*B + Cin = Sum + 3*Cout} 40 -140 0 0 0.38 0.38 {}
T {Combinational 1-trit slice: mul -> full_adder. No state, accumulator, or mode MUX.} 40 -80 0 0 0.24 0.24 {}
C {/home/ishi-kai/balanced-ternary-logic/mul.sym} 330 340 0 0 {name=x_mul}
C {/home/ishi-kai/balanced-ternary-logic/full_adder.sym} 800 340 0 0 {name=x_fa}
C {devices/ipin.sym} 120 320 0 0 {name=l1 lab=a}
C {devices/ipin.sym} 120 360 0 0 {name=l2 lab=b}
C {devices/ipin.sym} 120 220 0 0 {name=l3 lab=x}
C {devices/ipin.sym} 120 460 0 0 {name=l4 lab=cin}
C {devices/opin.sym} 1080 320 0 0 {name=l5 lab=sum}
C {devices/opin.sym} 1080 360 0 0 {name=l6 lab=cout}
N 120 320 270 320 {lab=a}
N 120 360 270 360 {lab=b}
N 400 340 710 340 {lab=p}
N 120 220 650 220 {lab=x}
N 650 220 650 300 {lab=x}
N 650 300 710 300 {lab=x}
N 120 460 650 460 {lab=cin}
N 650 380 650 460 {lab=cin}
N 650 380 710 380 {lab=cin}
N 890 320 1080 320 {lab=sum}
N 890 360 1080 360 {lab=cout}
C {devices/lab_pin.sym} 530 340 0 0 {name=l7 lab=p}
C {devices/lab_pin.sym} 400 320 0 0 {name=l8 lab=nmin}
C {devices/lab_pin.sym} 400 360 0 0 {name=l9 lab=or_out}
C {/home/ishi-kai/balanced-ternary-logic/inverter.sym} 330 550 0 0 {name=x_and}
C {devices/lab_pin.sym} 270 550 0 0 {name=l10 lab=nmin}
C {devices/lab_pin.sym} 330 490 0 0 {name=l11 lab=VDD}
C {devices/lab_pin.sym} 330 610 0 0 {name=l12 lab=VSS}
N 400 550 1080 550 {lab=and_out}
C {devices/opin.sym} 1080 550 0 0 {name=l13 lab=and_out}
C {devices/opin.sym} 1080 500 0 0 {name=l14 lab=or_out}
C {devices/lab_pin.sym} 330 280 0 0 {name=l15 lab=VDD}
C {devices/lab_pin.sym} 330 400 0 0 {name=l16 lab=VSS}
C {devices/lab_pin.sym} 800 250 0 0 {name=l17 lab=VDD}
C {devices/lab_pin.sym} 800 430 0 0 {name=l18 lab=VSS}
C {devices/lab_pin.sym} 830 450 0 0 {name=l19 lab=VMID}
C {devices/iopin.sym} 180 610 0 0 {name=l20 lab=VDD}
C {devices/iopin.sym} 430 610 0 0 {name=l21 lab=VSS}
C {devices/iopin.sym} 680 610 0 0 {name=l22 lab=VMID}
T {B=+5 V: X+A+Cin (ADD/FA); B=-5 V: X-A+Cin (SUB).} 40 720 0 0 0.24 0.24 {}
T {X=Cin=0 V: Sum=A*B; Cout=0 (MUL).} 40 765 0 0 0.24 0.24 {}
T {Levels -5/0/+5 V encode -1/0/+1. Power: VDD=+5 V, VMID=0 V, VSS=-5 V.} 40 810 0 0 0.24 0.24 {}
T {MUL: 14 MOS + 8 RR. FA: 98 MOS + 32 RR. Extra INV: 2 MOS + 2 RR. Total: 114 MOS + 42 RR.} 40 855 0 0 0.24 0.24 {}
T {AND=min(A,B)=INV(MUL.t1); OR=max(A,B)=MUL.t3. Total 11 pins including VSS.} 40 900 0 0 0.24 0.24 {}
T {No internal load capacitors. Add output loading in the TB.} 40 945 0 0 0.24 0.24 {}
