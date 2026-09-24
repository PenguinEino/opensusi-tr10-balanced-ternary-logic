v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {MULTIPLY-ADD SLICE / all 81 input combinations / X+A*B+Cin=Sum+3*Cout} 40 -140 0 0 0.38 0.38 {}
T {27 C; +/-5 V and 0 V supplies; 10 fF on all four outputs; 1 ns edges, 200 ns slots.} 40 -80 0 0 0.24 0.24 {}
C {/home/ishi-kai/balanced-ternary-logic/mac.sym} 400 250 0 0 {name=xdut}
C {devices/lab_pin.sym} 280 190 0 0 {name=l1 lab=x}
C {devices/lab_pin.sym} 280 230 0 0 {name=l2 lab=a}
C {devices/lab_pin.sym} 280 270 0 0 {name=l3 lab=b}
C {devices/lab_pin.sym} 280 310 0 0 {name=l4 lab=cin}
C {devices/lab_pin.sym} 520 230 0 0 {name=l5 lab=sum}
C {devices/lab_pin.sym} 520 270 0 0 {name=l6 lab=cout}
C {devices/lab_pin.sym} 400 120 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 400 380 0 0 {name=l8 lab=VSS}
C {devices/lab_pin.sym} 440 400 0 0 {name=l9 lab=VMID}
C {devices/lab_pin.sym} 520 190 0 0 {name=l10 lab=and_out}
C {devices/lab_pin.sym} 520 310 0 0 {name=l11 lab=or_out}
C {devices/capa.sym} 740 240 0 0 {name=Csum value=10f m=1}
C {devices/lab_pin.sym} 740 210 0 0 {name=l12 lab=sum}
C {devices/gnd.sym} 740 270 0 0 {name=l13 lab=GND}
C {devices/capa.sym} 960 240 0 0 {name=Ccout value=10f m=1}
C {devices/lab_pin.sym} 960 210 0 0 {name=l14 lab=cout}
C {devices/gnd.sym} 960 270 0 0 {name=l15 lab=GND}
C {devices/capa.sym} 740 380 0 0 {name=Cand_out value=10f m=1}
C {devices/lab_pin.sym} 740 350 0 0 {name=l16 lab=and_out}
C {devices/gnd.sym} 740 410 0 0 {name=l17 lab=GND}
C {devices/capa.sym} 960 380 0 0 {name=Cor_out value=10f m=1}
C {devices/lab_pin.sym} 960 350 0 0 {name=l18 lab=or_out}
C {devices/gnd.sym} 960 410 0 0 {name=l19 lab=GND}
C {devices/vsource.sym} 120 540 0 0 {name=VDD
value="5"
savecurrent=false
hide_texts=true text_size_1=0.001}
C {devices/lab_pin.sym} 120 510 0 0 {name=l20 lab=VDD}
C {devices/gnd.sym} 120 570 0 0 {name=l21 lab=GND}
T {VDD} 150 530 0 0 0.24 0.24 {}
C {devices/vsource.sym} 400 540 0 0 {name=VSS
value="-5"
savecurrent=false
hide_texts=true text_size_1=0.001}
C {devices/lab_pin.sym} 400 510 0 0 {name=l22 lab=VSS}
C {devices/gnd.sym} 400 570 0 0 {name=l23 lab=GND}
T {VSS} 430 530 0 0 0.24 0.24 {}
C {devices/vsource.sym} 680 540 0 0 {name=VMID
value="0"
savecurrent=false
hide_texts=true text_size_1=0.001}
C {devices/lab_pin.sym} 680 510 0 0 {name=l24 lab=VMID}
C {devices/gnd.sym} 680 570 0 0 {name=l25 lab=GND}
T {VMID} 710 530 0 0 0.24 0.24 {}
C {devices/vsource.sym} 100 790 0 0 {name=VX
value="PWL(0 -5 200n -5 201n -5 400n -5 401n -5 600n -5 601n -5 800n -5 801n -5 1000n -5 1001n -5 1200n -5 1201n -5 1400n -5 1401n -5 1600n -5 1601n -5 1800n -5 1801n -5 2000n -5 2001n -5 2200n -5 2201n -5 2400n -5 2401n -5 2600n -5 2601n -5 2800n -5 2801n -5 3000n -5 3001n -5 3200n -5 3201n -5 3400n -5 3401n -5 3600n -5 3601n -5 3800n -5 3801n -5 4000n -5 4001n -5 4200n -5 4201n -5 4400n -5 4401n -5 4600n -5 4601n -5 4800n -5 4801n -5 5000n -5 5001n -5 5200n -5 5201n -5 5400n -5 5401n 0 5600n 0 5601n 0 5800n 0 5801n 0 6000n 0 6001n 0 6200n 0 6201n 0 6400n 0 6401n 0 6600n 0 6601n 0 6800n 0 6801n 0 7000n 0 7001n 0 7200n 0 7201n 0 7400n 0 7401n 0 7600n 0 7601n 0 7800n 0 7801n 0 8000n 0 8001n 0 8200n 0 8201n 0 8400n 0 8401n 0 8600n 0 8601n 0 8800n 0 8801n 0 9000n 0 9001n 0 9200n 0 9201n 0 9400n 0 9401n 0 9600n 0 9601n 0 9800n 0 9801n 0 10000n 0 10001n 0 10200n 0 10201n 0 10400n 0 10401n 0 10600n 0 10601n 0 10800n 0 10801n 5 11000n 5 11001n 5 11200n 5 11201n 5 11400n 5 11401n 5 11600n 5 11601n 5 11800n 5 11801n 5 12000n 5 12001n 5 12200n 5 12201n 5 12400n 5 12401n 5 12600n 5 12601n 5 12800n 5 12801n 5 13000n 5 13001n 5 13200n 5 13201n 5 13400n 5 13401n 5 13600n 5 13601n 5 13800n 5 13801n 5 14000n 5 14001n 5 14200n 5 14201n 5 14400n 5 14401n 5 14600n 5 14601n 5 14800n 5 14801n 5 15000n 5 15001n 5 15200n 5 15201n 5 15400n 5 15401n 5 15600n 5 15601n 5 15800n 5 15801n 5 16000n 5 16001n 5 16200n 5 16201n -5 16400n -5)"
savecurrent=false
hide_texts=true text_size_1=0.001}
C {devices/lab_pin.sym} 100 760 0 0 {name=l26 lab=x}
C {devices/gnd.sym} 100 820 0 0 {name=l27 lab=GND}
T {VX} 130 780 0 0 0.24 0.24 {}
C {devices/vsource.sym} 380 790 0 0 {name=VA
value="PWL(0 -5 200n -5 201n -5 400n -5 401n -5 600n -5 601n -5 800n -5 801n -5 1000n -5 1001n -5 1200n -5 1201n -5 1400n -5 1401n -5 1600n -5 1601n -5 1800n -5 1801n 0 2000n 0 2001n 0 2200n 0 2201n 0 2400n 0 2401n 0 2600n 0 2601n 0 2800n 0 2801n 0 3000n 0 3001n 0 3200n 0 3201n 0 3400n 0 3401n 0 3600n 0 3601n 5 3800n 5 3801n 5 4000n 5 4001n 5 4200n 5 4201n 5 4400n 5 4401n 5 4600n 5 4601n 5 4800n 5 4801n 5 5000n 5 5001n 5 5200n 5 5201n 5 5400n 5 5401n -5 5600n -5 5601n -5 5800n -5 5801n -5 6000n -5 6001n -5 6200n -5 6201n -5 6400n -5 6401n -5 6600n -5 6601n -5 6800n -5 6801n -5 7000n -5 7001n -5 7200n -5 7201n 0 7400n 0 7401n 0 7600n 0 7601n 0 7800n 0 7801n 0 8000n 0 8001n 0 8200n 0 8201n 0 8400n 0 8401n 0 8600n 0 8601n 0 8800n 0 8801n 0 9000n 0 9001n 5 9200n 5 9201n 5 9400n 5 9401n 5 9600n 5 9601n 5 9800n 5 9801n 5 10000n 5 10001n 5 10200n 5 10201n 5 10400n 5 10401n 5 10600n 5 10601n 5 10800n 5 10801n -5 11000n -5 11001n -5 11200n -5 11201n -5 11400n -5 11401n -5 11600n -5 11601n -5 11800n -5 11801n -5 12000n -5 12001n -5 12200n -5 12201n -5 12400n -5 12401n -5 12600n -5 12601n 0 12800n 0 12801n 0 13000n 0 13001n 0 13200n 0 13201n 0 13400n 0 13401n 0 13600n 0 13601n 0 13800n 0 13801n 0 14000n 0 14001n 0 14200n 0 14201n 0 14400n 0 14401n 5 14600n 5 14601n 5 14800n 5 14801n 5 15000n 5 15001n 5 15200n 5 15201n 5 15400n 5 15401n 5 15600n 5 15601n 5 15800n 5 15801n 5 16000n 5 16001n 5 16200n 5 16201n -5 16400n -5)"
savecurrent=false
hide_texts=true text_size_1=0.001}
C {devices/lab_pin.sym} 380 760 0 0 {name=l28 lab=a}
C {devices/gnd.sym} 380 820 0 0 {name=l29 lab=GND}
T {VA} 410 780 0 0 0.24 0.24 {}
C {devices/vsource.sym} 660 790 0 0 {name=VB
value="PWL(0 -5 200n -5 201n -5 400n -5 401n -5 600n -5 601n 0 800n 0 801n 0 1000n 0 1001n 0 1200n 0 1201n 5 1400n 5 1401n 5 1600n 5 1601n 5 1800n 5 1801n -5 2000n -5 2001n -5 2200n -5 2201n -5 2400n -5 2401n 0 2600n 0 2601n 0 2800n 0 2801n 0 3000n 0 3001n 5 3200n 5 3201n 5 3400n 5 3401n 5 3600n 5 3601n -5 3800n -5 3801n -5 4000n -5 4001n -5 4200n -5 4201n 0 4400n 0 4401n 0 4600n 0 4601n 0 4800n 0 4801n 5 5000n 5 5001n 5 5200n 5 5201n 5 5400n 5 5401n -5 5600n -5 5601n -5 5800n -5 5801n -5 6000n -5 6001n 0 6200n 0 6201n 0 6400n 0 6401n 0 6600n 0 6601n 5 6800n 5 6801n 5 7000n 5 7001n 5 7200n 5 7201n -5 7400n -5 7401n -5 7600n -5 7601n -5 7800n -5 7801n 0 8000n 0 8001n 0 8200n 0 8201n 0 8400n 0 8401n 5 8600n 5 8601n 5 8800n 5 8801n 5 9000n 5 9001n -5 9200n -5 9201n -5 9400n -5 9401n -5 9600n -5 9601n 0 9800n 0 9801n 0 10000n 0 10001n 0 10200n 0 10201n 5 10400n 5 10401n 5 10600n 5 10601n 5 10800n 5 10801n -5 11000n -5 11001n -5 11200n -5 11201n -5 11400n -5 11401n 0 11600n 0 11601n 0 11800n 0 11801n 0 12000n 0 12001n 5 12200n 5 12201n 5 12400n 5 12401n 5 12600n 5 12601n -5 12800n -5 12801n -5 13000n -5 13001n -5 13200n -5 13201n 0 13400n 0 13401n 0 13600n 0 13601n 0 13800n 0 13801n 5 14000n 5 14001n 5 14200n 5 14201n 5 14400n 5 14401n -5 14600n -5 14601n -5 14800n -5 14801n -5 15000n -5 15001n 0 15200n 0 15201n 0 15400n 0 15401n 0 15600n 0 15601n 5 15800n 5 15801n 5 16000n 5 16001n 5 16200n 5 16201n -5 16400n -5)"
savecurrent=false
hide_texts=true text_size_1=0.001}
C {devices/lab_pin.sym} 660 760 0 0 {name=l30 lab=b}
C {devices/gnd.sym} 660 820 0 0 {name=l31 lab=GND}
T {VB} 690 780 0 0 0.24 0.24 {}
C {devices/vsource.sym} 940 790 0 0 {name=VCIN
value="PWL(0 -5 200n -5 201n 0 400n 0 401n 5 600n 5 601n -5 800n -5 801n 0 1000n 0 1001n 5 1200n 5 1201n -5 1400n -5 1401n 0 1600n 0 1601n 5 1800n 5 1801n -5 2000n -5 2001n 0 2200n 0 2201n 5 2400n 5 2401n -5 2600n -5 2601n 0 2800n 0 2801n 5 3000n 5 3001n -5 3200n -5 3201n 0 3400n 0 3401n 5 3600n 5 3601n -5 3800n -5 3801n 0 4000n 0 4001n 5 4200n 5 4201n -5 4400n -5 4401n 0 4600n 0 4601n 5 4800n 5 4801n -5 5000n -5 5001n 0 5200n 0 5201n 5 5400n 5 5401n -5 5600n -5 5601n 0 5800n 0 5801n 5 6000n 5 6001n -5 6200n -5 6201n 0 6400n 0 6401n 5 6600n 5 6601n -5 6800n -5 6801n 0 7000n 0 7001n 5 7200n 5 7201n -5 7400n -5 7401n 0 7600n 0 7601n 5 7800n 5 7801n -5 8000n -5 8001n 0 8200n 0 8201n 5 8400n 5 8401n -5 8600n -5 8601n 0 8800n 0 8801n 5 9000n 5 9001n -5 9200n -5 9201n 0 9400n 0 9401n 5 9600n 5 9601n -5 9800n -5 9801n 0 10000n 0 10001n 5 10200n 5 10201n -5 10400n -5 10401n 0 10600n 0 10601n 5 10800n 5 10801n -5 11000n -5 11001n 0 11200n 0 11201n 5 11400n 5 11401n -5 11600n -5 11601n 0 11800n 0 11801n 5 12000n 5 12001n -5 12200n -5 12201n 0 12400n 0 12401n 5 12600n 5 12601n -5 12800n -5 12801n 0 13000n 0 13001n 5 13200n 5 13201n -5 13400n -5 13401n 0 13600n 0 13601n 5 13800n 5 13801n -5 14000n -5 14001n 0 14200n 0 14201n 5 14400n 5 14401n -5 14600n -5 14601n 0 14800n 0 14801n 5 15000n 5 15001n -5 15200n -5 15201n 0 15400n 0 15401n 5 15600n 5 15601n -5 15800n -5 15801n 0 16000n 0 16001n 5 16200n 5 16201n -5 16400n -5)"
savecurrent=false
hide_texts=true text_size_1=0.001}
C {devices/lab_pin.sym} 940 760 0 0 {name=l32 lab=cin}
C {devices/gnd.sym} 940 820 0 0 {name=l33 lab=GND}
T {VCIN} 970 780 0 0 0.24 0.24 {}
T {Each 27-state block fixes X and enumerates A, B, Cin in -5/0/+5 order.} 40 900 0 0 0.24 0.24 {}
T {After state 80, return to (-5,-5,-5,-5) in slot 81; sample at 16399 ns.} 40 945 0 0 0.24 0.24 {}
T {RUN: disable LVS -> Netlist -> Simulate. Native voltage plots and PASS/FAIL log.} 40 990 0 0 0.24 0.24 {}
T {External samples allow logic to settle. No guarantee of glitch-free transitions.} 40 1035 0 0 0.24 0.24 {}
T {X=-5 V / 27 states} 1230 -90 0 0 0.29 0.29 {}
T {A    B   Cin   Sum  Cout  AND  OR  Sample(ns)} 1230 -45 0 0 0.22 0.22 {}
T {-5   -5   -5    -5    +0    -5    -5    199} 1230 0 0 0 0.22 0.22 {}
T {-5   -5   +0    +0    +0    -5    -5    399} 1230 32 0 0 0.22 0.22 {}
T {-5   -5   +5    +5    +0    -5    -5    599} 1230 64 0 0 0.22 0.22 {}
T {-5   +0   -5    +5    -5    -5    +0    799} 1230 96 0 0 0.22 0.22 {}
T {-5   +0   +0    -5    +0    -5    +0    999} 1230 128 0 0 0.22 0.22 {}
T {-5   +0   +5    +0    +0    -5    +0    1199} 1230 160 0 0 0.22 0.22 {}
T {-5   +5   -5    +0    -5    -5    +5    1399} 1230 192 0 0 0.22 0.22 {}
T {-5   +5   +0    +5    -5    -5    +5    1599} 1230 224 0 0 0.22 0.22 {}
T {-5   +5   +5    -5    +0    -5    +5    1799} 1230 256 0 0 0.22 0.22 {}
T {+0   -5   -5    +5    -5    -5    +0    1999} 1230 288 0 0 0.22 0.22 {}
T {+0   -5   +0    -5    +0    -5    +0    2199} 1230 320 0 0 0.22 0.22 {}
T {+0   -5   +5    +0    +0    -5    +0    2399} 1230 352 0 0 0.22 0.22 {}
T {+0   +0   -5    +5    -5    +0    +0    2599} 1230 384 0 0 0.22 0.22 {}
T {+0   +0   +0    -5    +0    +0    +0    2799} 1230 416 0 0 0.22 0.22 {}
T {+0   +0   +5    +0    +0    +0    +0    2999} 1230 448 0 0 0.22 0.22 {}
T {+0   +5   -5    +5    -5    +0    +5    3199} 1230 480 0 0 0.22 0.22 {}
T {+0   +5   +0    -5    +0    +0    +5    3399} 1230 512 0 0 0.22 0.22 {}
T {+0   +5   +5    +0    +0    +0    +5    3599} 1230 544 0 0 0.22 0.22 {}
T {+5   -5   -5    +0    -5    -5    +5    3799} 1230 576 0 0 0.22 0.22 {}
T {+5   -5   +0    +5    -5    -5    +5    3999} 1230 608 0 0 0.22 0.22 {}
T {+5   -5   +5    -5    +0    -5    +5    4199} 1230 640 0 0 0.22 0.22 {}
T {+5   +0   -5    +5    -5    +0    +5    4399} 1230 672 0 0 0.22 0.22 {}
T {+5   +0   +0    -5    +0    +0    +5    4599} 1230 704 0 0 0.22 0.22 {}
T {+5   +0   +5    +0    +0    +0    +5    4799} 1230 736 0 0 0.22 0.22 {}
T {+5   +5   -5    -5    +0    +5    +5    4999} 1230 768 0 0 0.22 0.22 {}
T {+5   +5   +0    +0    +0    +5    +5    5199} 1230 800 0 0 0.22 0.22 {}
T {+5   +5   +5    +5    +0    +5    +5    5399} 1230 832 0 0 0.22 0.22 {}
T {X=+0 V / 27 states} 1880 -90 0 0 0.29 0.29 {}
T {A    B   Cin   Sum  Cout  AND  OR  Sample(ns)} 1880 -45 0 0 0.22 0.22 {}
T {-5   -5   -5    +0    +0    -5    -5    5599} 1880 0 0 0 0.22 0.22 {}
T {-5   -5   +0    +5    +0    -5    -5    5799} 1880 32 0 0 0.22 0.22 {}
T {-5   -5   +5    -5    +5    -5    -5    5999} 1880 64 0 0 0.22 0.22 {}
T {-5   +0   -5    -5    +0    -5    +0    6199} 1880 96 0 0 0.22 0.22 {}
T {-5   +0   +0    +0    +0    -5    +0    6399} 1880 128 0 0 0.22 0.22 {}
T {-5   +0   +5    +5    +0    -5    +0    6599} 1880 160 0 0 0.22 0.22 {}
T {-5   +5   -5    +5    -5    -5    +5    6799} 1880 192 0 0 0.22 0.22 {}
T {-5   +5   +0    -5    +0    -5    +5    6999} 1880 224 0 0 0.22 0.22 {}
T {-5   +5   +5    +0    +0    -5    +5    7199} 1880 256 0 0 0.22 0.22 {}
T {+0   -5   -5    -5    +0    -5    +0    7399} 1880 288 0 0 0.22 0.22 {}
T {+0   -5   +0    +0    +0    -5    +0    7599} 1880 320 0 0 0.22 0.22 {}
T {+0   -5   +5    +5    +0    -5    +0    7799} 1880 352 0 0 0.22 0.22 {}
T {+0   +0   -5    -5    +0    +0    +0    7999} 1880 384 0 0 0.22 0.22 {}
T {+0   +0   +0    +0    +0    +0    +0    8199} 1880 416 0 0 0.22 0.22 {}
T {+0   +0   +5    +5    +0    +0    +0    8399} 1880 448 0 0 0.22 0.22 {}
T {+0   +5   -5    -5    +0    +0    +5    8599} 1880 480 0 0 0.22 0.22 {}
T {+0   +5   +0    +0    +0    +0    +5    8799} 1880 512 0 0 0.22 0.22 {}
T {+0   +5   +5    +5    +0    +0    +5    8999} 1880 544 0 0 0.22 0.22 {}
T {+5   -5   -5    +5    -5    -5    +5    9199} 1880 576 0 0 0.22 0.22 {}
T {+5   -5   +0    -5    +0    -5    +5    9399} 1880 608 0 0 0.22 0.22 {}
T {+5   -5   +5    +0    +0    -5    +5    9599} 1880 640 0 0 0.22 0.22 {}
T {+5   +0   -5    -5    +0    +0    +5    9799} 1880 672 0 0 0.22 0.22 {}
T {+5   +0   +0    +0    +0    +0    +5    9999} 1880 704 0 0 0.22 0.22 {}
T {+5   +0   +5    +5    +0    +0    +5    10199} 1880 736 0 0 0.22 0.22 {}
T {+5   +5   -5    +0    +0    +5    +5    10399} 1880 768 0 0 0.22 0.22 {}
T {+5   +5   +0    +5    +0    +5    +5    10599} 1880 800 0 0 0.22 0.22 {}
T {+5   +5   +5    -5    +5    +5    +5    10799} 1880 832 0 0 0.22 0.22 {}
T {X=+5 V / 27 states} 2530 -90 0 0 0.29 0.29 {}
T {A    B   Cin   Sum  Cout  AND  OR  Sample(ns)} 2530 -45 0 0 0.22 0.22 {}
T {-5   -5   -5    +5    +0    -5    -5    10999} 2530 0 0 0 0.22 0.22 {}
T {-5   -5   +0    -5    +5    -5    -5    11199} 2530 32 0 0 0.22 0.22 {}
T {-5   -5   +5    +0    +5    -5    -5    11399} 2530 64 0 0 0.22 0.22 {}
T {-5   +0   -5    +0    +0    -5    +0    11599} 2530 96 0 0 0.22 0.22 {}
T {-5   +0   +0    +5    +0    -5    +0    11799} 2530 128 0 0 0.22 0.22 {}
T {-5   +0   +5    -5    +5    -5    +0    11999} 2530 160 0 0 0.22 0.22 {}
T {-5   +5   -5    -5    +0    -5    +5    12199} 2530 192 0 0 0.22 0.22 {}
T {-5   +5   +0    +0    +0    -5    +5    12399} 2530 224 0 0 0.22 0.22 {}
T {-5   +5   +5    +5    +0    -5    +5    12599} 2530 256 0 0 0.22 0.22 {}
T {+0   -5   -5    +0    +0    -5    +0    12799} 2530 288 0 0 0.22 0.22 {}
T {+0   -5   +0    +5    +0    -5    +0    12999} 2530 320 0 0 0.22 0.22 {}
T {+0   -5   +5    -5    +5    -5    +0    13199} 2530 352 0 0 0.22 0.22 {}
T {+0   +0   -5    +0    +0    +0    +0    13399} 2530 384 0 0 0.22 0.22 {}
T {+0   +0   +0    +5    +0    +0    +0    13599} 2530 416 0 0 0.22 0.22 {}
T {+0   +0   +5    -5    +5    +0    +0    13799} 2530 448 0 0 0.22 0.22 {}
T {+0   +5   -5    +0    +0    +0    +5    13999} 2530 480 0 0 0.22 0.22 {}
T {+0   +5   +0    +5    +0    +0    +5    14199} 2530 512 0 0 0.22 0.22 {}
T {+0   +5   +5    -5    +5    +0    +5    14399} 2530 544 0 0 0.22 0.22 {}
T {+5   -5   -5    -5    +0    -5    +5    14599} 2530 576 0 0 0.22 0.22 {}
T {+5   -5   +0    +0    +0    -5    +5    14799} 2530 608 0 0 0.22 0.22 {}
T {+5   -5   +5    +5    +0    -5    +5    14999} 2530 640 0 0 0.22 0.22 {}
T {+5   +0   -5    +0    +0    +0    +5    15199} 2530 672 0 0 0.22 0.22 {}
T {+5   +0   +0    +5    +0    +0    +5    15399} 2530 704 0 0 0.22 0.22 {}
T {+5   +0   +5    -5    +5    +0    +5    15599} 2530 736 0 0 0.22 0.22 {}
T {+5   +5   -5    +5    +0    +5    +5    15799} 2530 768 0 0 0.22 0.22 {}
T {+5   +5   +0    -5    +5    +5    +5    15999} 2530 800 0 0 0.22 0.22 {}
T {+5   +5   +5    +0    +5    +5    +5    16199} 2530 832 0 0 0.22 0.22 {}
C {devices/code.sym} 1300 1050 0 0 {name=TR_1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"}
C {devices/code.sym} 1600 1050 0 0 {name=SIMULATION
only_toplevel=true
value=".temp 27
.options rshunt=1e12
.nodeset v(xdut.p)=5 v(xdut.nmin)=5 v(xdut.x_mul.t2)=5 v(or_out)=-5 v(and_out)=-5
.nodeset v(sum)=-5 v(cout)=0 v(xdut.x_fa.s1)=0 v(xdut.x_fa.c1)=0 v(xdut.x_fa.c2)=0 v(xdut.x_fa.nc)=0
.nodeset v(xdut.x_fa.x_ha1.t)=0 v(xdut.x_fa.x_ha1.u)=-5 v(xdut.x_fa.x_ha1.na)=5 v(xdut.x_fa.x_ha1.d)=0 v(xdut.x_fa.x_ha1.nd)=0
.nodeset v(xdut.x_fa.x_ha1.x_t.net1)=5 v(xdut.x_fa.x_ha1.x_t.net2)=5 v(xdut.x_fa.x_ha1.x_t.net3)=-5 v(xdut.x_fa.x_ha1.x_t.net4)=-5 v(xdut.x_fa.x_ha1.x_t.net5)=0 v(xdut.x_fa.x_ha1.x_t.net6)=0
.nodeset v(xdut.x_fa.x_ha1.x_u.net1)=5 v(xdut.x_fa.x_ha1.x_u.net2)=5 v(xdut.x_fa.x_ha1.x_u.net3)=-5 v(xdut.x_fa.x_ha1.x_u.net4)=-5 v(xdut.x_fa.x_ha1.x_u.net5)=0 v(xdut.x_fa.x_ha1.x_u.net6)=0
.nodeset v(xdut.x_fa.x_ha1.x_c.net1)=5 v(xdut.x_fa.x_ha1.x_c.net2)=5 v(xdut.x_fa.x_ha1.x_c.net3)=-5 v(xdut.x_fa.x_ha1.x_c.net4)=-5 v(xdut.x_fa.x_ha1.x_c.net5)=0 v(xdut.x_fa.x_ha1.x_c.net6)=0
.nodeset v(xdut.x_fa.x_ha1.x_d.net1)=5 v(xdut.x_fa.x_ha1.x_d.net2)=5 v(xdut.x_fa.x_ha1.x_d.net3)=-5 v(xdut.x_fa.x_ha1.x_d.net4)=-5 v(xdut.x_fa.x_ha1.x_d.net5)=0 v(xdut.x_fa.x_ha1.x_d.net6)=0
.nodeset v(xdut.x_fa.x_ha1.x_s.net1)=5 v(xdut.x_fa.x_ha1.x_s.net2)=5 v(xdut.x_fa.x_ha1.x_s.net3)=-5 v(xdut.x_fa.x_ha1.x_s.net4)=-5 v(xdut.x_fa.x_ha1.x_s.net5)=0 v(xdut.x_fa.x_ha1.x_s.net6)=0
.nodeset v(xdut.x_fa.x_ha1.x_na.net1)=5 v(xdut.x_fa.x_ha1.x_na.net2)=-5
.nodeset v(xdut.x_fa.x_ha1.x_nd.net1)=5 v(xdut.x_fa.x_ha1.x_nd.net2)=-5
.nodeset v(xdut.x_fa.x_ha2.t)=5 v(xdut.x_fa.x_ha2.u)=0 v(xdut.x_fa.x_ha2.na)=0 v(xdut.x_fa.x_ha2.d)=-5 v(xdut.x_fa.x_ha2.nd)=5
.nodeset v(xdut.x_fa.x_ha2.x_t.net1)=5 v(xdut.x_fa.x_ha2.x_t.net2)=5 v(xdut.x_fa.x_ha2.x_t.net3)=-5 v(xdut.x_fa.x_ha2.x_t.net4)=-5 v(xdut.x_fa.x_ha2.x_t.net5)=0 v(xdut.x_fa.x_ha2.x_t.net6)=0
.nodeset v(xdut.x_fa.x_ha2.x_u.net1)=5 v(xdut.x_fa.x_ha2.x_u.net2)=5 v(xdut.x_fa.x_ha2.x_u.net3)=-5 v(xdut.x_fa.x_ha2.x_u.net4)=-5 v(xdut.x_fa.x_ha2.x_u.net5)=0 v(xdut.x_fa.x_ha2.x_u.net6)=0
.nodeset v(xdut.x_fa.x_ha2.x_c.net1)=5 v(xdut.x_fa.x_ha2.x_c.net2)=5 v(xdut.x_fa.x_ha2.x_c.net3)=-5 v(xdut.x_fa.x_ha2.x_c.net4)=-5 v(xdut.x_fa.x_ha2.x_c.net5)=0 v(xdut.x_fa.x_ha2.x_c.net6)=0
.nodeset v(xdut.x_fa.x_ha2.x_d.net1)=5 v(xdut.x_fa.x_ha2.x_d.net2)=5 v(xdut.x_fa.x_ha2.x_d.net3)=-5 v(xdut.x_fa.x_ha2.x_d.net4)=-5 v(xdut.x_fa.x_ha2.x_d.net5)=0 v(xdut.x_fa.x_ha2.x_d.net6)=0
.nodeset v(xdut.x_fa.x_ha2.x_s.net1)=5 v(xdut.x_fa.x_ha2.x_s.net2)=5 v(xdut.x_fa.x_ha2.x_s.net3)=-5 v(xdut.x_fa.x_ha2.x_s.net4)=-5 v(xdut.x_fa.x_ha2.x_s.net5)=0 v(xdut.x_fa.x_ha2.x_s.net6)=0
.nodeset v(xdut.x_fa.x_ha2.x_na.net1)=5 v(xdut.x_fa.x_ha2.x_na.net2)=-5
.nodeset v(xdut.x_fa.x_ha2.x_nd.net1)=5 v(xdut.x_fa.x_ha2.x_nd.net2)=-5
.nodeset v(xdut.x_fa.x_cmerge.net1)=5 v(xdut.x_fa.x_cmerge.net2)=5 v(xdut.x_fa.x_cmerge.net3)=-5 v(xdut.x_fa.x_cmerge.net4)=-5 v(xdut.x_fa.x_cmerge.net5)=0 v(xdut.x_fa.x_cmerge.net6)=0
.nodeset v(xdut.x_fa.x_cout.net1)=5 v(xdut.x_fa.x_cout.net2)=-5
.control
save all
set wr_singlescale
set wr_vecnames
setplot const
let failures=0
tran 0.5n 16400n 0 1n
meas tran tran_0_sum find v(sum) at=199n
if abs(tran_0_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_0_sum expected -5 V
end
meas tran tran_0_cout find v(cout) at=199n
if abs(tran_0_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_0_cout expected 0 V
end
meas tran tran_0_xdut_p find v(xdut.p) at=199n
if abs(tran_0_xdut_p-(5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_0_xdut_p expected 5.0 V
end
meas tran tran_0_and_out find v(and_out) at=199n
if abs(tran_0_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_0_and_out expected -5 V
end
meas tran tran_0_or_out find v(or_out) at=199n
if abs(tran_0_or_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_0_or_out expected -5 V
end
meas tran tran_1_sum find v(sum) at=399n
if abs(tran_1_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_1_sum expected 0 V
end
meas tran tran_1_cout find v(cout) at=399n
if abs(tran_1_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_1_cout expected 0 V
end
meas tran tran_1_xdut_p find v(xdut.p) at=399n
if abs(tran_1_xdut_p-(5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_1_xdut_p expected 5.0 V
end
meas tran tran_1_and_out find v(and_out) at=399n
if abs(tran_1_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_1_and_out expected -5 V
end
meas tran tran_1_or_out find v(or_out) at=399n
if abs(tran_1_or_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_1_or_out expected -5 V
end
meas tran tran_2_sum find v(sum) at=599n
if abs(tran_2_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_2_sum expected 5 V
end
meas tran tran_2_cout find v(cout) at=599n
if abs(tran_2_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_2_cout expected 0 V
end
meas tran tran_2_xdut_p find v(xdut.p) at=599n
if abs(tran_2_xdut_p-(5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_2_xdut_p expected 5.0 V
end
meas tran tran_2_and_out find v(and_out) at=599n
if abs(tran_2_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_2_and_out expected -5 V
end
meas tran tran_2_or_out find v(or_out) at=599n
if abs(tran_2_or_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_2_or_out expected -5 V
end
meas tran tran_3_sum find v(sum) at=799n
if abs(tran_3_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_3_sum expected 5 V
end
meas tran tran_3_cout find v(cout) at=799n
if abs(tran_3_cout-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_3_cout expected -5 V
end
meas tran tran_3_xdut_p find v(xdut.p) at=799n
if abs(tran_3_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_3_xdut_p expected 0.0 V
end
meas tran tran_3_and_out find v(and_out) at=799n
if abs(tran_3_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_3_and_out expected -5 V
end
meas tran tran_3_or_out find v(or_out) at=799n
if abs(tran_3_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_3_or_out expected 0 V
end
meas tran tran_4_sum find v(sum) at=999n
if abs(tran_4_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_4_sum expected -5 V
end
meas tran tran_4_cout find v(cout) at=999n
if abs(tran_4_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_4_cout expected 0 V
end
meas tran tran_4_xdut_p find v(xdut.p) at=999n
if abs(tran_4_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_4_xdut_p expected 0.0 V
end
meas tran tran_4_and_out find v(and_out) at=999n
if abs(tran_4_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_4_and_out expected -5 V
end
meas tran tran_4_or_out find v(or_out) at=999n
if abs(tran_4_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_4_or_out expected 0 V
end
meas tran tran_5_sum find v(sum) at=1199n
if abs(tran_5_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_5_sum expected 0 V
end
meas tran tran_5_cout find v(cout) at=1199n
if abs(tran_5_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_5_cout expected 0 V
end
meas tran tran_5_xdut_p find v(xdut.p) at=1199n
if abs(tran_5_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_5_xdut_p expected 0.0 V
end
meas tran tran_5_and_out find v(and_out) at=1199n
if abs(tran_5_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_5_and_out expected -5 V
end
meas tran tran_5_or_out find v(or_out) at=1199n
if abs(tran_5_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_5_or_out expected 0 V
end
meas tran tran_6_sum find v(sum) at=1399n
if abs(tran_6_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_6_sum expected 0 V
end
meas tran tran_6_cout find v(cout) at=1399n
if abs(tran_6_cout-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_6_cout expected -5 V
end
meas tran tran_6_xdut_p find v(xdut.p) at=1399n
if abs(tran_6_xdut_p-(-5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_6_xdut_p expected -5.0 V
end
meas tran tran_6_and_out find v(and_out) at=1399n
if abs(tran_6_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_6_and_out expected -5 V
end
meas tran tran_6_or_out find v(or_out) at=1399n
if abs(tran_6_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_6_or_out expected 5 V
end
meas tran tran_7_sum find v(sum) at=1599n
if abs(tran_7_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_7_sum expected 5 V
end
meas tran tran_7_cout find v(cout) at=1599n
if abs(tran_7_cout-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_7_cout expected -5 V
end
meas tran tran_7_xdut_p find v(xdut.p) at=1599n
if abs(tran_7_xdut_p-(-5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_7_xdut_p expected -5.0 V
end
meas tran tran_7_and_out find v(and_out) at=1599n
if abs(tran_7_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_7_and_out expected -5 V
end
meas tran tran_7_or_out find v(or_out) at=1599n
if abs(tran_7_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_7_or_out expected 5 V
end
meas tran tran_8_sum find v(sum) at=1799n
if abs(tran_8_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_8_sum expected -5 V
end
meas tran tran_8_cout find v(cout) at=1799n
if abs(tran_8_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_8_cout expected 0 V
end
meas tran tran_8_xdut_p find v(xdut.p) at=1799n
if abs(tran_8_xdut_p-(-5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_8_xdut_p expected -5.0 V
end
meas tran tran_8_and_out find v(and_out) at=1799n
if abs(tran_8_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_8_and_out expected -5 V
end
meas tran tran_8_or_out find v(or_out) at=1799n
if abs(tran_8_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_8_or_out expected 5 V
end
meas tran tran_9_sum find v(sum) at=1999n
if abs(tran_9_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_9_sum expected 5 V
end
meas tran tran_9_cout find v(cout) at=1999n
if abs(tran_9_cout-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_9_cout expected -5 V
end
meas tran tran_9_xdut_p find v(xdut.p) at=1999n
if abs(tran_9_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_9_xdut_p expected 0.0 V
end
meas tran tran_9_and_out find v(and_out) at=1999n
if abs(tran_9_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_9_and_out expected -5 V
end
meas tran tran_9_or_out find v(or_out) at=1999n
if abs(tran_9_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_9_or_out expected 0 V
end
meas tran tran_10_sum find v(sum) at=2199n
if abs(tran_10_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_10_sum expected -5 V
end
meas tran tran_10_cout find v(cout) at=2199n
if abs(tran_10_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_10_cout expected 0 V
end
meas tran tran_10_xdut_p find v(xdut.p) at=2199n
if abs(tran_10_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_10_xdut_p expected 0.0 V
end
meas tran tran_10_and_out find v(and_out) at=2199n
if abs(tran_10_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_10_and_out expected -5 V
end
meas tran tran_10_or_out find v(or_out) at=2199n
if abs(tran_10_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_10_or_out expected 0 V
end
meas tran tran_11_sum find v(sum) at=2399n
if abs(tran_11_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_11_sum expected 0 V
end
meas tran tran_11_cout find v(cout) at=2399n
if abs(tran_11_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_11_cout expected 0 V
end
meas tran tran_11_xdut_p find v(xdut.p) at=2399n
if abs(tran_11_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_11_xdut_p expected 0.0 V
end
meas tran tran_11_and_out find v(and_out) at=2399n
if abs(tran_11_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_11_and_out expected -5 V
end
meas tran tran_11_or_out find v(or_out) at=2399n
if abs(tran_11_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_11_or_out expected 0 V
end
meas tran tran_12_sum find v(sum) at=2599n
if abs(tran_12_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_12_sum expected 5 V
end
meas tran tran_12_cout find v(cout) at=2599n
if abs(tran_12_cout-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_12_cout expected -5 V
end
meas tran tran_12_xdut_p find v(xdut.p) at=2599n
if abs(tran_12_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_12_xdut_p expected 0.0 V
end
meas tran tran_12_and_out find v(and_out) at=2599n
if abs(tran_12_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_12_and_out expected 0 V
end
meas tran tran_12_or_out find v(or_out) at=2599n
if abs(tran_12_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_12_or_out expected 0 V
end
meas tran tran_13_sum find v(sum) at=2799n
if abs(tran_13_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_13_sum expected -5 V
end
meas tran tran_13_cout find v(cout) at=2799n
if abs(tran_13_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_13_cout expected 0 V
end
meas tran tran_13_xdut_p find v(xdut.p) at=2799n
if abs(tran_13_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_13_xdut_p expected 0.0 V
end
meas tran tran_13_and_out find v(and_out) at=2799n
if abs(tran_13_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_13_and_out expected 0 V
end
meas tran tran_13_or_out find v(or_out) at=2799n
if abs(tran_13_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_13_or_out expected 0 V
end
meas tran tran_14_sum find v(sum) at=2999n
if abs(tran_14_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_14_sum expected 0 V
end
meas tran tran_14_cout find v(cout) at=2999n
if abs(tran_14_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_14_cout expected 0 V
end
meas tran tran_14_xdut_p find v(xdut.p) at=2999n
if abs(tran_14_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_14_xdut_p expected 0.0 V
end
meas tran tran_14_and_out find v(and_out) at=2999n
if abs(tran_14_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_14_and_out expected 0 V
end
meas tran tran_14_or_out find v(or_out) at=2999n
if abs(tran_14_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_14_or_out expected 0 V
end
meas tran tran_15_sum find v(sum) at=3199n
if abs(tran_15_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_15_sum expected 5 V
end
meas tran tran_15_cout find v(cout) at=3199n
if abs(tran_15_cout-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_15_cout expected -5 V
end
meas tran tran_15_xdut_p find v(xdut.p) at=3199n
if abs(tran_15_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_15_xdut_p expected 0.0 V
end
meas tran tran_15_and_out find v(and_out) at=3199n
if abs(tran_15_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_15_and_out expected 0 V
end
meas tran tran_15_or_out find v(or_out) at=3199n
if abs(tran_15_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_15_or_out expected 5 V
end
meas tran tran_16_sum find v(sum) at=3399n
if abs(tran_16_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_16_sum expected -5 V
end
meas tran tran_16_cout find v(cout) at=3399n
if abs(tran_16_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_16_cout expected 0 V
end
meas tran tran_16_xdut_p find v(xdut.p) at=3399n
if abs(tran_16_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_16_xdut_p expected 0.0 V
end
meas tran tran_16_and_out find v(and_out) at=3399n
if abs(tran_16_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_16_and_out expected 0 V
end
meas tran tran_16_or_out find v(or_out) at=3399n
if abs(tran_16_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_16_or_out expected 5 V
end
meas tran tran_17_sum find v(sum) at=3599n
if abs(tran_17_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_17_sum expected 0 V
end
meas tran tran_17_cout find v(cout) at=3599n
if abs(tran_17_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_17_cout expected 0 V
end
meas tran tran_17_xdut_p find v(xdut.p) at=3599n
if abs(tran_17_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_17_xdut_p expected 0.0 V
end
meas tran tran_17_and_out find v(and_out) at=3599n
if abs(tran_17_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_17_and_out expected 0 V
end
meas tran tran_17_or_out find v(or_out) at=3599n
if abs(tran_17_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_17_or_out expected 5 V
end
meas tran tran_18_sum find v(sum) at=3799n
if abs(tran_18_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_18_sum expected 0 V
end
meas tran tran_18_cout find v(cout) at=3799n
if abs(tran_18_cout-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_18_cout expected -5 V
end
meas tran tran_18_xdut_p find v(xdut.p) at=3799n
if abs(tran_18_xdut_p-(-5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_18_xdut_p expected -5.0 V
end
meas tran tran_18_and_out find v(and_out) at=3799n
if abs(tran_18_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_18_and_out expected -5 V
end
meas tran tran_18_or_out find v(or_out) at=3799n
if abs(tran_18_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_18_or_out expected 5 V
end
meas tran tran_19_sum find v(sum) at=3999n
if abs(tran_19_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_19_sum expected 5 V
end
meas tran tran_19_cout find v(cout) at=3999n
if abs(tran_19_cout-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_19_cout expected -5 V
end
meas tran tran_19_xdut_p find v(xdut.p) at=3999n
if abs(tran_19_xdut_p-(-5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_19_xdut_p expected -5.0 V
end
meas tran tran_19_and_out find v(and_out) at=3999n
if abs(tran_19_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_19_and_out expected -5 V
end
meas tran tran_19_or_out find v(or_out) at=3999n
if abs(tran_19_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_19_or_out expected 5 V
end
meas tran tran_20_sum find v(sum) at=4199n
if abs(tran_20_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_20_sum expected -5 V
end
meas tran tran_20_cout find v(cout) at=4199n
if abs(tran_20_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_20_cout expected 0 V
end
meas tran tran_20_xdut_p find v(xdut.p) at=4199n
if abs(tran_20_xdut_p-(-5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_20_xdut_p expected -5.0 V
end
meas tran tran_20_and_out find v(and_out) at=4199n
if abs(tran_20_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_20_and_out expected -5 V
end
meas tran tran_20_or_out find v(or_out) at=4199n
if abs(tran_20_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_20_or_out expected 5 V
end
meas tran tran_21_sum find v(sum) at=4399n
if abs(tran_21_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_21_sum expected 5 V
end
meas tran tran_21_cout find v(cout) at=4399n
if abs(tran_21_cout-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_21_cout expected -5 V
end
meas tran tran_21_xdut_p find v(xdut.p) at=4399n
if abs(tran_21_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_21_xdut_p expected 0.0 V
end
meas tran tran_21_and_out find v(and_out) at=4399n
if abs(tran_21_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_21_and_out expected 0 V
end
meas tran tran_21_or_out find v(or_out) at=4399n
if abs(tran_21_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_21_or_out expected 5 V
end
meas tran tran_22_sum find v(sum) at=4599n
if abs(tran_22_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_22_sum expected -5 V
end
meas tran tran_22_cout find v(cout) at=4599n
if abs(tran_22_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_22_cout expected 0 V
end
meas tran tran_22_xdut_p find v(xdut.p) at=4599n
if abs(tran_22_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_22_xdut_p expected 0.0 V
end
meas tran tran_22_and_out find v(and_out) at=4599n
if abs(tran_22_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_22_and_out expected 0 V
end
meas tran tran_22_or_out find v(or_out) at=4599n
if abs(tran_22_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_22_or_out expected 5 V
end
meas tran tran_23_sum find v(sum) at=4799n
if abs(tran_23_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_23_sum expected 0 V
end
meas tran tran_23_cout find v(cout) at=4799n
if abs(tran_23_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_23_cout expected 0 V
end
meas tran tran_23_xdut_p find v(xdut.p) at=4799n
if abs(tran_23_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_23_xdut_p expected 0.0 V
end
meas tran tran_23_and_out find v(and_out) at=4799n
if abs(tran_23_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_23_and_out expected 0 V
end
meas tran tran_23_or_out find v(or_out) at=4799n
if abs(tran_23_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_23_or_out expected 5 V
end
meas tran tran_24_sum find v(sum) at=4999n
if abs(tran_24_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_24_sum expected -5 V
end
meas tran tran_24_cout find v(cout) at=4999n
if abs(tran_24_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_24_cout expected 0 V
end
meas tran tran_24_xdut_p find v(xdut.p) at=4999n
if abs(tran_24_xdut_p-(5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_24_xdut_p expected 5.0 V
end
meas tran tran_24_and_out find v(and_out) at=4999n
if abs(tran_24_and_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_24_and_out expected 5 V
end
meas tran tran_24_or_out find v(or_out) at=4999n
if abs(tran_24_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_24_or_out expected 5 V
end
meas tran tran_25_sum find v(sum) at=5199n
if abs(tran_25_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_25_sum expected 0 V
end
meas tran tran_25_cout find v(cout) at=5199n
if abs(tran_25_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_25_cout expected 0 V
end
meas tran tran_25_xdut_p find v(xdut.p) at=5199n
if abs(tran_25_xdut_p-(5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_25_xdut_p expected 5.0 V
end
meas tran tran_25_and_out find v(and_out) at=5199n
if abs(tran_25_and_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_25_and_out expected 5 V
end
meas tran tran_25_or_out find v(or_out) at=5199n
if abs(tran_25_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_25_or_out expected 5 V
end
meas tran tran_26_sum find v(sum) at=5399n
if abs(tran_26_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_26_sum expected 5 V
end
meas tran tran_26_cout find v(cout) at=5399n
if abs(tran_26_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_26_cout expected 0 V
end
meas tran tran_26_xdut_p find v(xdut.p) at=5399n
if abs(tran_26_xdut_p-(5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_26_xdut_p expected 5.0 V
end
meas tran tran_26_and_out find v(and_out) at=5399n
if abs(tran_26_and_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_26_and_out expected 5 V
end
meas tran tran_26_or_out find v(or_out) at=5399n
if abs(tran_26_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_26_or_out expected 5 V
end
meas tran tran_27_sum find v(sum) at=5599n
if abs(tran_27_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_27_sum expected 0 V
end
meas tran tran_27_cout find v(cout) at=5599n
if abs(tran_27_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_27_cout expected 0 V
end
meas tran tran_27_xdut_p find v(xdut.p) at=5599n
if abs(tran_27_xdut_p-(5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_27_xdut_p expected 5.0 V
end
meas tran tran_27_and_out find v(and_out) at=5599n
if abs(tran_27_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_27_and_out expected -5 V
end
meas tran tran_27_or_out find v(or_out) at=5599n
if abs(tran_27_or_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_27_or_out expected -5 V
end
meas tran tran_28_sum find v(sum) at=5799n
if abs(tran_28_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_28_sum expected 5 V
end
meas tran tran_28_cout find v(cout) at=5799n
if abs(tran_28_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_28_cout expected 0 V
end
meas tran tran_28_xdut_p find v(xdut.p) at=5799n
if abs(tran_28_xdut_p-(5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_28_xdut_p expected 5.0 V
end
meas tran tran_28_and_out find v(and_out) at=5799n
if abs(tran_28_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_28_and_out expected -5 V
end
meas tran tran_28_or_out find v(or_out) at=5799n
if abs(tran_28_or_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_28_or_out expected -5 V
end
meas tran tran_29_sum find v(sum) at=5999n
if abs(tran_29_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_29_sum expected -5 V
end
meas tran tran_29_cout find v(cout) at=5999n
if abs(tran_29_cout-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_29_cout expected 5 V
end
meas tran tran_29_xdut_p find v(xdut.p) at=5999n
if abs(tran_29_xdut_p-(5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_29_xdut_p expected 5.0 V
end
meas tran tran_29_and_out find v(and_out) at=5999n
if abs(tran_29_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_29_and_out expected -5 V
end
meas tran tran_29_or_out find v(or_out) at=5999n
if abs(tran_29_or_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_29_or_out expected -5 V
end
meas tran tran_30_sum find v(sum) at=6199n
if abs(tran_30_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_30_sum expected -5 V
end
meas tran tran_30_cout find v(cout) at=6199n
if abs(tran_30_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_30_cout expected 0 V
end
meas tran tran_30_xdut_p find v(xdut.p) at=6199n
if abs(tran_30_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_30_xdut_p expected 0.0 V
end
meas tran tran_30_and_out find v(and_out) at=6199n
if abs(tran_30_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_30_and_out expected -5 V
end
meas tran tran_30_or_out find v(or_out) at=6199n
if abs(tran_30_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_30_or_out expected 0 V
end
meas tran tran_31_sum find v(sum) at=6399n
if abs(tran_31_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_31_sum expected 0 V
end
meas tran tran_31_cout find v(cout) at=6399n
if abs(tran_31_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_31_cout expected 0 V
end
meas tran tran_31_xdut_p find v(xdut.p) at=6399n
if abs(tran_31_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_31_xdut_p expected 0.0 V
end
meas tran tran_31_and_out find v(and_out) at=6399n
if abs(tran_31_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_31_and_out expected -5 V
end
meas tran tran_31_or_out find v(or_out) at=6399n
if abs(tran_31_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_31_or_out expected 0 V
end
meas tran tran_32_sum find v(sum) at=6599n
if abs(tran_32_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_32_sum expected 5 V
end
meas tran tran_32_cout find v(cout) at=6599n
if abs(tran_32_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_32_cout expected 0 V
end
meas tran tran_32_xdut_p find v(xdut.p) at=6599n
if abs(tran_32_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_32_xdut_p expected 0.0 V
end
meas tran tran_32_and_out find v(and_out) at=6599n
if abs(tran_32_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_32_and_out expected -5 V
end
meas tran tran_32_or_out find v(or_out) at=6599n
if abs(tran_32_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_32_or_out expected 0 V
end
meas tran tran_33_sum find v(sum) at=6799n
if abs(tran_33_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_33_sum expected 5 V
end
meas tran tran_33_cout find v(cout) at=6799n
if abs(tran_33_cout-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_33_cout expected -5 V
end
meas tran tran_33_xdut_p find v(xdut.p) at=6799n
if abs(tran_33_xdut_p-(-5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_33_xdut_p expected -5.0 V
end
meas tran tran_33_and_out find v(and_out) at=6799n
if abs(tran_33_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_33_and_out expected -5 V
end
meas tran tran_33_or_out find v(or_out) at=6799n
if abs(tran_33_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_33_or_out expected 5 V
end
meas tran tran_34_sum find v(sum) at=6999n
if abs(tran_34_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_34_sum expected -5 V
end
meas tran tran_34_cout find v(cout) at=6999n
if abs(tran_34_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_34_cout expected 0 V
end
meas tran tran_34_xdut_p find v(xdut.p) at=6999n
if abs(tran_34_xdut_p-(-5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_34_xdut_p expected -5.0 V
end
meas tran tran_34_and_out find v(and_out) at=6999n
if abs(tran_34_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_34_and_out expected -5 V
end
meas tran tran_34_or_out find v(or_out) at=6999n
if abs(tran_34_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_34_or_out expected 5 V
end
meas tran tran_35_sum find v(sum) at=7199n
if abs(tran_35_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_35_sum expected 0 V
end
meas tran tran_35_cout find v(cout) at=7199n
if abs(tran_35_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_35_cout expected 0 V
end
meas tran tran_35_xdut_p find v(xdut.p) at=7199n
if abs(tran_35_xdut_p-(-5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_35_xdut_p expected -5.0 V
end
meas tran tran_35_and_out find v(and_out) at=7199n
if abs(tran_35_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_35_and_out expected -5 V
end
meas tran tran_35_or_out find v(or_out) at=7199n
if abs(tran_35_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_35_or_out expected 5 V
end
meas tran tran_36_sum find v(sum) at=7399n
if abs(tran_36_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_36_sum expected -5 V
end
meas tran tran_36_cout find v(cout) at=7399n
if abs(tran_36_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_36_cout expected 0 V
end
meas tran tran_36_xdut_p find v(xdut.p) at=7399n
if abs(tran_36_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_36_xdut_p expected 0.0 V
end
meas tran tran_36_and_out find v(and_out) at=7399n
if abs(tran_36_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_36_and_out expected -5 V
end
meas tran tran_36_or_out find v(or_out) at=7399n
if abs(tran_36_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_36_or_out expected 0 V
end
meas tran tran_37_sum find v(sum) at=7599n
if abs(tran_37_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_37_sum expected 0 V
end
meas tran tran_37_cout find v(cout) at=7599n
if abs(tran_37_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_37_cout expected 0 V
end
meas tran tran_37_xdut_p find v(xdut.p) at=7599n
if abs(tran_37_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_37_xdut_p expected 0.0 V
end
meas tran tran_37_and_out find v(and_out) at=7599n
if abs(tran_37_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_37_and_out expected -5 V
end
meas tran tran_37_or_out find v(or_out) at=7599n
if abs(tran_37_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_37_or_out expected 0 V
end
meas tran tran_38_sum find v(sum) at=7799n
if abs(tran_38_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_38_sum expected 5 V
end
meas tran tran_38_cout find v(cout) at=7799n
if abs(tran_38_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_38_cout expected 0 V
end
meas tran tran_38_xdut_p find v(xdut.p) at=7799n
if abs(tran_38_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_38_xdut_p expected 0.0 V
end
meas tran tran_38_and_out find v(and_out) at=7799n
if abs(tran_38_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_38_and_out expected -5 V
end
meas tran tran_38_or_out find v(or_out) at=7799n
if abs(tran_38_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_38_or_out expected 0 V
end
meas tran tran_39_sum find v(sum) at=7999n
if abs(tran_39_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_39_sum expected -5 V
end
meas tran tran_39_cout find v(cout) at=7999n
if abs(tran_39_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_39_cout expected 0 V
end
meas tran tran_39_xdut_p find v(xdut.p) at=7999n
if abs(tran_39_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_39_xdut_p expected 0.0 V
end
meas tran tran_39_and_out find v(and_out) at=7999n
if abs(tran_39_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_39_and_out expected 0 V
end
meas tran tran_39_or_out find v(or_out) at=7999n
if abs(tran_39_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_39_or_out expected 0 V
end
meas tran tran_40_sum find v(sum) at=8199n
if abs(tran_40_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_40_sum expected 0 V
end
meas tran tran_40_cout find v(cout) at=8199n
if abs(tran_40_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_40_cout expected 0 V
end
meas tran tran_40_xdut_p find v(xdut.p) at=8199n
if abs(tran_40_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_40_xdut_p expected 0.0 V
end
meas tran tran_40_and_out find v(and_out) at=8199n
if abs(tran_40_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_40_and_out expected 0 V
end
meas tran tran_40_or_out find v(or_out) at=8199n
if abs(tran_40_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_40_or_out expected 0 V
end
meas tran tran_41_sum find v(sum) at=8399n
if abs(tran_41_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_41_sum expected 5 V
end
meas tran tran_41_cout find v(cout) at=8399n
if abs(tran_41_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_41_cout expected 0 V
end
meas tran tran_41_xdut_p find v(xdut.p) at=8399n
if abs(tran_41_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_41_xdut_p expected 0.0 V
end
meas tran tran_41_and_out find v(and_out) at=8399n
if abs(tran_41_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_41_and_out expected 0 V
end
meas tran tran_41_or_out find v(or_out) at=8399n
if abs(tran_41_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_41_or_out expected 0 V
end
meas tran tran_42_sum find v(sum) at=8599n
if abs(tran_42_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_42_sum expected -5 V
end
meas tran tran_42_cout find v(cout) at=8599n
if abs(tran_42_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_42_cout expected 0 V
end
meas tran tran_42_xdut_p find v(xdut.p) at=8599n
if abs(tran_42_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_42_xdut_p expected 0.0 V
end
meas tran tran_42_and_out find v(and_out) at=8599n
if abs(tran_42_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_42_and_out expected 0 V
end
meas tran tran_42_or_out find v(or_out) at=8599n
if abs(tran_42_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_42_or_out expected 5 V
end
meas tran tran_43_sum find v(sum) at=8799n
if abs(tran_43_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_43_sum expected 0 V
end
meas tran tran_43_cout find v(cout) at=8799n
if abs(tran_43_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_43_cout expected 0 V
end
meas tran tran_43_xdut_p find v(xdut.p) at=8799n
if abs(tran_43_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_43_xdut_p expected 0.0 V
end
meas tran tran_43_and_out find v(and_out) at=8799n
if abs(tran_43_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_43_and_out expected 0 V
end
meas tran tran_43_or_out find v(or_out) at=8799n
if abs(tran_43_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_43_or_out expected 5 V
end
meas tran tran_44_sum find v(sum) at=8999n
if abs(tran_44_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_44_sum expected 5 V
end
meas tran tran_44_cout find v(cout) at=8999n
if abs(tran_44_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_44_cout expected 0 V
end
meas tran tran_44_xdut_p find v(xdut.p) at=8999n
if abs(tran_44_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_44_xdut_p expected 0.0 V
end
meas tran tran_44_and_out find v(and_out) at=8999n
if abs(tran_44_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_44_and_out expected 0 V
end
meas tran tran_44_or_out find v(or_out) at=8999n
if abs(tran_44_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_44_or_out expected 5 V
end
meas tran tran_45_sum find v(sum) at=9199n
if abs(tran_45_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_45_sum expected 5 V
end
meas tran tran_45_cout find v(cout) at=9199n
if abs(tran_45_cout-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_45_cout expected -5 V
end
meas tran tran_45_xdut_p find v(xdut.p) at=9199n
if abs(tran_45_xdut_p-(-5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_45_xdut_p expected -5.0 V
end
meas tran tran_45_and_out find v(and_out) at=9199n
if abs(tran_45_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_45_and_out expected -5 V
end
meas tran tran_45_or_out find v(or_out) at=9199n
if abs(tran_45_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_45_or_out expected 5 V
end
meas tran tran_46_sum find v(sum) at=9399n
if abs(tran_46_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_46_sum expected -5 V
end
meas tran tran_46_cout find v(cout) at=9399n
if abs(tran_46_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_46_cout expected 0 V
end
meas tran tran_46_xdut_p find v(xdut.p) at=9399n
if abs(tran_46_xdut_p-(-5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_46_xdut_p expected -5.0 V
end
meas tran tran_46_and_out find v(and_out) at=9399n
if abs(tran_46_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_46_and_out expected -5 V
end
meas tran tran_46_or_out find v(or_out) at=9399n
if abs(tran_46_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_46_or_out expected 5 V
end
meas tran tran_47_sum find v(sum) at=9599n
if abs(tran_47_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_47_sum expected 0 V
end
meas tran tran_47_cout find v(cout) at=9599n
if abs(tran_47_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_47_cout expected 0 V
end
meas tran tran_47_xdut_p find v(xdut.p) at=9599n
if abs(tran_47_xdut_p-(-5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_47_xdut_p expected -5.0 V
end
meas tran tran_47_and_out find v(and_out) at=9599n
if abs(tran_47_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_47_and_out expected -5 V
end
meas tran tran_47_or_out find v(or_out) at=9599n
if abs(tran_47_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_47_or_out expected 5 V
end
meas tran tran_48_sum find v(sum) at=9799n
if abs(tran_48_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_48_sum expected -5 V
end
meas tran tran_48_cout find v(cout) at=9799n
if abs(tran_48_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_48_cout expected 0 V
end
meas tran tran_48_xdut_p find v(xdut.p) at=9799n
if abs(tran_48_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_48_xdut_p expected 0.0 V
end
meas tran tran_48_and_out find v(and_out) at=9799n
if abs(tran_48_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_48_and_out expected 0 V
end
meas tran tran_48_or_out find v(or_out) at=9799n
if abs(tran_48_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_48_or_out expected 5 V
end
meas tran tran_49_sum find v(sum) at=9999n
if abs(tran_49_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_49_sum expected 0 V
end
meas tran tran_49_cout find v(cout) at=9999n
if abs(tran_49_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_49_cout expected 0 V
end
meas tran tran_49_xdut_p find v(xdut.p) at=9999n
if abs(tran_49_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_49_xdut_p expected 0.0 V
end
meas tran tran_49_and_out find v(and_out) at=9999n
if abs(tran_49_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_49_and_out expected 0 V
end
meas tran tran_49_or_out find v(or_out) at=9999n
if abs(tran_49_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_49_or_out expected 5 V
end
meas tran tran_50_sum find v(sum) at=10199n
if abs(tran_50_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_50_sum expected 5 V
end
meas tran tran_50_cout find v(cout) at=10199n
if abs(tran_50_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_50_cout expected 0 V
end
meas tran tran_50_xdut_p find v(xdut.p) at=10199n
if abs(tran_50_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_50_xdut_p expected 0.0 V
end
meas tran tran_50_and_out find v(and_out) at=10199n
if abs(tran_50_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_50_and_out expected 0 V
end
meas tran tran_50_or_out find v(or_out) at=10199n
if abs(tran_50_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_50_or_out expected 5 V
end
meas tran tran_51_sum find v(sum) at=10399n
if abs(tran_51_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_51_sum expected 0 V
end
meas tran tran_51_cout find v(cout) at=10399n
if abs(tran_51_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_51_cout expected 0 V
end
meas tran tran_51_xdut_p find v(xdut.p) at=10399n
if abs(tran_51_xdut_p-(5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_51_xdut_p expected 5.0 V
end
meas tran tran_51_and_out find v(and_out) at=10399n
if abs(tran_51_and_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_51_and_out expected 5 V
end
meas tran tran_51_or_out find v(or_out) at=10399n
if abs(tran_51_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_51_or_out expected 5 V
end
meas tran tran_52_sum find v(sum) at=10599n
if abs(tran_52_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_52_sum expected 5 V
end
meas tran tran_52_cout find v(cout) at=10599n
if abs(tran_52_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_52_cout expected 0 V
end
meas tran tran_52_xdut_p find v(xdut.p) at=10599n
if abs(tran_52_xdut_p-(5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_52_xdut_p expected 5.0 V
end
meas tran tran_52_and_out find v(and_out) at=10599n
if abs(tran_52_and_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_52_and_out expected 5 V
end
meas tran tran_52_or_out find v(or_out) at=10599n
if abs(tran_52_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_52_or_out expected 5 V
end
meas tran tran_53_sum find v(sum) at=10799n
if abs(tran_53_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_53_sum expected -5 V
end
meas tran tran_53_cout find v(cout) at=10799n
if abs(tran_53_cout-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_53_cout expected 5 V
end
meas tran tran_53_xdut_p find v(xdut.p) at=10799n
if abs(tran_53_xdut_p-(5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_53_xdut_p expected 5.0 V
end
meas tran tran_53_and_out find v(and_out) at=10799n
if abs(tran_53_and_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_53_and_out expected 5 V
end
meas tran tran_53_or_out find v(or_out) at=10799n
if abs(tran_53_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_53_or_out expected 5 V
end
meas tran tran_54_sum find v(sum) at=10999n
if abs(tran_54_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_54_sum expected 5 V
end
meas tran tran_54_cout find v(cout) at=10999n
if abs(tran_54_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_54_cout expected 0 V
end
meas tran tran_54_xdut_p find v(xdut.p) at=10999n
if abs(tran_54_xdut_p-(5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_54_xdut_p expected 5.0 V
end
meas tran tran_54_and_out find v(and_out) at=10999n
if abs(tran_54_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_54_and_out expected -5 V
end
meas tran tran_54_or_out find v(or_out) at=10999n
if abs(tran_54_or_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_54_or_out expected -5 V
end
meas tran tran_55_sum find v(sum) at=11199n
if abs(tran_55_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_55_sum expected -5 V
end
meas tran tran_55_cout find v(cout) at=11199n
if abs(tran_55_cout-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_55_cout expected 5 V
end
meas tran tran_55_xdut_p find v(xdut.p) at=11199n
if abs(tran_55_xdut_p-(5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_55_xdut_p expected 5.0 V
end
meas tran tran_55_and_out find v(and_out) at=11199n
if abs(tran_55_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_55_and_out expected -5 V
end
meas tran tran_55_or_out find v(or_out) at=11199n
if abs(tran_55_or_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_55_or_out expected -5 V
end
meas tran tran_56_sum find v(sum) at=11399n
if abs(tran_56_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_56_sum expected 0 V
end
meas tran tran_56_cout find v(cout) at=11399n
if abs(tran_56_cout-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_56_cout expected 5 V
end
meas tran tran_56_xdut_p find v(xdut.p) at=11399n
if abs(tran_56_xdut_p-(5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_56_xdut_p expected 5.0 V
end
meas tran tran_56_and_out find v(and_out) at=11399n
if abs(tran_56_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_56_and_out expected -5 V
end
meas tran tran_56_or_out find v(or_out) at=11399n
if abs(tran_56_or_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_56_or_out expected -5 V
end
meas tran tran_57_sum find v(sum) at=11599n
if abs(tran_57_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_57_sum expected 0 V
end
meas tran tran_57_cout find v(cout) at=11599n
if abs(tran_57_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_57_cout expected 0 V
end
meas tran tran_57_xdut_p find v(xdut.p) at=11599n
if abs(tran_57_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_57_xdut_p expected 0.0 V
end
meas tran tran_57_and_out find v(and_out) at=11599n
if abs(tran_57_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_57_and_out expected -5 V
end
meas tran tran_57_or_out find v(or_out) at=11599n
if abs(tran_57_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_57_or_out expected 0 V
end
meas tran tran_58_sum find v(sum) at=11799n
if abs(tran_58_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_58_sum expected 5 V
end
meas tran tran_58_cout find v(cout) at=11799n
if abs(tran_58_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_58_cout expected 0 V
end
meas tran tran_58_xdut_p find v(xdut.p) at=11799n
if abs(tran_58_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_58_xdut_p expected 0.0 V
end
meas tran tran_58_and_out find v(and_out) at=11799n
if abs(tran_58_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_58_and_out expected -5 V
end
meas tran tran_58_or_out find v(or_out) at=11799n
if abs(tran_58_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_58_or_out expected 0 V
end
meas tran tran_59_sum find v(sum) at=11999n
if abs(tran_59_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_59_sum expected -5 V
end
meas tran tran_59_cout find v(cout) at=11999n
if abs(tran_59_cout-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_59_cout expected 5 V
end
meas tran tran_59_xdut_p find v(xdut.p) at=11999n
if abs(tran_59_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_59_xdut_p expected 0.0 V
end
meas tran tran_59_and_out find v(and_out) at=11999n
if abs(tran_59_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_59_and_out expected -5 V
end
meas tran tran_59_or_out find v(or_out) at=11999n
if abs(tran_59_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_59_or_out expected 0 V
end
meas tran tran_60_sum find v(sum) at=12199n
if abs(tran_60_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_60_sum expected -5 V
end
meas tran tran_60_cout find v(cout) at=12199n
if abs(tran_60_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_60_cout expected 0 V
end
meas tran tran_60_xdut_p find v(xdut.p) at=12199n
if abs(tran_60_xdut_p-(-5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_60_xdut_p expected -5.0 V
end
meas tran tran_60_and_out find v(and_out) at=12199n
if abs(tran_60_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_60_and_out expected -5 V
end
meas tran tran_60_or_out find v(or_out) at=12199n
if abs(tran_60_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_60_or_out expected 5 V
end
meas tran tran_61_sum find v(sum) at=12399n
if abs(tran_61_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_61_sum expected 0 V
end
meas tran tran_61_cout find v(cout) at=12399n
if abs(tran_61_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_61_cout expected 0 V
end
meas tran tran_61_xdut_p find v(xdut.p) at=12399n
if abs(tran_61_xdut_p-(-5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_61_xdut_p expected -5.0 V
end
meas tran tran_61_and_out find v(and_out) at=12399n
if abs(tran_61_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_61_and_out expected -5 V
end
meas tran tran_61_or_out find v(or_out) at=12399n
if abs(tran_61_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_61_or_out expected 5 V
end
meas tran tran_62_sum find v(sum) at=12599n
if abs(tran_62_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_62_sum expected 5 V
end
meas tran tran_62_cout find v(cout) at=12599n
if abs(tran_62_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_62_cout expected 0 V
end
meas tran tran_62_xdut_p find v(xdut.p) at=12599n
if abs(tran_62_xdut_p-(-5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_62_xdut_p expected -5.0 V
end
meas tran tran_62_and_out find v(and_out) at=12599n
if abs(tran_62_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_62_and_out expected -5 V
end
meas tran tran_62_or_out find v(or_out) at=12599n
if abs(tran_62_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_62_or_out expected 5 V
end
meas tran tran_63_sum find v(sum) at=12799n
if abs(tran_63_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_63_sum expected 0 V
end
meas tran tran_63_cout find v(cout) at=12799n
if abs(tran_63_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_63_cout expected 0 V
end
meas tran tran_63_xdut_p find v(xdut.p) at=12799n
if abs(tran_63_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_63_xdut_p expected 0.0 V
end
meas tran tran_63_and_out find v(and_out) at=12799n
if abs(tran_63_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_63_and_out expected -5 V
end
meas tran tran_63_or_out find v(or_out) at=12799n
if abs(tran_63_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_63_or_out expected 0 V
end
meas tran tran_64_sum find v(sum) at=12999n
if abs(tran_64_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_64_sum expected 5 V
end
meas tran tran_64_cout find v(cout) at=12999n
if abs(tran_64_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_64_cout expected 0 V
end
meas tran tran_64_xdut_p find v(xdut.p) at=12999n
if abs(tran_64_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_64_xdut_p expected 0.0 V
end
meas tran tran_64_and_out find v(and_out) at=12999n
if abs(tran_64_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_64_and_out expected -5 V
end
meas tran tran_64_or_out find v(or_out) at=12999n
if abs(tran_64_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_64_or_out expected 0 V
end
meas tran tran_65_sum find v(sum) at=13199n
if abs(tran_65_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_65_sum expected -5 V
end
meas tran tran_65_cout find v(cout) at=13199n
if abs(tran_65_cout-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_65_cout expected 5 V
end
meas tran tran_65_xdut_p find v(xdut.p) at=13199n
if abs(tran_65_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_65_xdut_p expected 0.0 V
end
meas tran tran_65_and_out find v(and_out) at=13199n
if abs(tran_65_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_65_and_out expected -5 V
end
meas tran tran_65_or_out find v(or_out) at=13199n
if abs(tran_65_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_65_or_out expected 0 V
end
meas tran tran_66_sum find v(sum) at=13399n
if abs(tran_66_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_66_sum expected 0 V
end
meas tran tran_66_cout find v(cout) at=13399n
if abs(tran_66_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_66_cout expected 0 V
end
meas tran tran_66_xdut_p find v(xdut.p) at=13399n
if abs(tran_66_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_66_xdut_p expected 0.0 V
end
meas tran tran_66_and_out find v(and_out) at=13399n
if abs(tran_66_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_66_and_out expected 0 V
end
meas tran tran_66_or_out find v(or_out) at=13399n
if abs(tran_66_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_66_or_out expected 0 V
end
meas tran tran_67_sum find v(sum) at=13599n
if abs(tran_67_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_67_sum expected 5 V
end
meas tran tran_67_cout find v(cout) at=13599n
if abs(tran_67_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_67_cout expected 0 V
end
meas tran tran_67_xdut_p find v(xdut.p) at=13599n
if abs(tran_67_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_67_xdut_p expected 0.0 V
end
meas tran tran_67_and_out find v(and_out) at=13599n
if abs(tran_67_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_67_and_out expected 0 V
end
meas tran tran_67_or_out find v(or_out) at=13599n
if abs(tran_67_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_67_or_out expected 0 V
end
meas tran tran_68_sum find v(sum) at=13799n
if abs(tran_68_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_68_sum expected -5 V
end
meas tran tran_68_cout find v(cout) at=13799n
if abs(tran_68_cout-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_68_cout expected 5 V
end
meas tran tran_68_xdut_p find v(xdut.p) at=13799n
if abs(tran_68_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_68_xdut_p expected 0.0 V
end
meas tran tran_68_and_out find v(and_out) at=13799n
if abs(tran_68_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_68_and_out expected 0 V
end
meas tran tran_68_or_out find v(or_out) at=13799n
if abs(tran_68_or_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_68_or_out expected 0 V
end
meas tran tran_69_sum find v(sum) at=13999n
if abs(tran_69_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_69_sum expected 0 V
end
meas tran tran_69_cout find v(cout) at=13999n
if abs(tran_69_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_69_cout expected 0 V
end
meas tran tran_69_xdut_p find v(xdut.p) at=13999n
if abs(tran_69_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_69_xdut_p expected 0.0 V
end
meas tran tran_69_and_out find v(and_out) at=13999n
if abs(tran_69_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_69_and_out expected 0 V
end
meas tran tran_69_or_out find v(or_out) at=13999n
if abs(tran_69_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_69_or_out expected 5 V
end
meas tran tran_70_sum find v(sum) at=14199n
if abs(tran_70_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_70_sum expected 5 V
end
meas tran tran_70_cout find v(cout) at=14199n
if abs(tran_70_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_70_cout expected 0 V
end
meas tran tran_70_xdut_p find v(xdut.p) at=14199n
if abs(tran_70_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_70_xdut_p expected 0.0 V
end
meas tran tran_70_and_out find v(and_out) at=14199n
if abs(tran_70_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_70_and_out expected 0 V
end
meas tran tran_70_or_out find v(or_out) at=14199n
if abs(tran_70_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_70_or_out expected 5 V
end
meas tran tran_71_sum find v(sum) at=14399n
if abs(tran_71_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_71_sum expected -5 V
end
meas tran tran_71_cout find v(cout) at=14399n
if abs(tran_71_cout-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_71_cout expected 5 V
end
meas tran tran_71_xdut_p find v(xdut.p) at=14399n
if abs(tran_71_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_71_xdut_p expected 0.0 V
end
meas tran tran_71_and_out find v(and_out) at=14399n
if abs(tran_71_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_71_and_out expected 0 V
end
meas tran tran_71_or_out find v(or_out) at=14399n
if abs(tran_71_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_71_or_out expected 5 V
end
meas tran tran_72_sum find v(sum) at=14599n
if abs(tran_72_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_72_sum expected -5 V
end
meas tran tran_72_cout find v(cout) at=14599n
if abs(tran_72_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_72_cout expected 0 V
end
meas tran tran_72_xdut_p find v(xdut.p) at=14599n
if abs(tran_72_xdut_p-(-5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_72_xdut_p expected -5.0 V
end
meas tran tran_72_and_out find v(and_out) at=14599n
if abs(tran_72_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_72_and_out expected -5 V
end
meas tran tran_72_or_out find v(or_out) at=14599n
if abs(tran_72_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_72_or_out expected 5 V
end
meas tran tran_73_sum find v(sum) at=14799n
if abs(tran_73_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_73_sum expected 0 V
end
meas tran tran_73_cout find v(cout) at=14799n
if abs(tran_73_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_73_cout expected 0 V
end
meas tran tran_73_xdut_p find v(xdut.p) at=14799n
if abs(tran_73_xdut_p-(-5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_73_xdut_p expected -5.0 V
end
meas tran tran_73_and_out find v(and_out) at=14799n
if abs(tran_73_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_73_and_out expected -5 V
end
meas tran tran_73_or_out find v(or_out) at=14799n
if abs(tran_73_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_73_or_out expected 5 V
end
meas tran tran_74_sum find v(sum) at=14999n
if abs(tran_74_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_74_sum expected 5 V
end
meas tran tran_74_cout find v(cout) at=14999n
if abs(tran_74_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_74_cout expected 0 V
end
meas tran tran_74_xdut_p find v(xdut.p) at=14999n
if abs(tran_74_xdut_p-(-5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_74_xdut_p expected -5.0 V
end
meas tran tran_74_and_out find v(and_out) at=14999n
if abs(tran_74_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_74_and_out expected -5 V
end
meas tran tran_74_or_out find v(or_out) at=14999n
if abs(tran_74_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_74_or_out expected 5 V
end
meas tran tran_75_sum find v(sum) at=15199n
if abs(tran_75_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_75_sum expected 0 V
end
meas tran tran_75_cout find v(cout) at=15199n
if abs(tran_75_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_75_cout expected 0 V
end
meas tran tran_75_xdut_p find v(xdut.p) at=15199n
if abs(tran_75_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_75_xdut_p expected 0.0 V
end
meas tran tran_75_and_out find v(and_out) at=15199n
if abs(tran_75_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_75_and_out expected 0 V
end
meas tran tran_75_or_out find v(or_out) at=15199n
if abs(tran_75_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_75_or_out expected 5 V
end
meas tran tran_76_sum find v(sum) at=15399n
if abs(tran_76_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_76_sum expected 5 V
end
meas tran tran_76_cout find v(cout) at=15399n
if abs(tran_76_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_76_cout expected 0 V
end
meas tran tran_76_xdut_p find v(xdut.p) at=15399n
if abs(tran_76_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_76_xdut_p expected 0.0 V
end
meas tran tran_76_and_out find v(and_out) at=15399n
if abs(tran_76_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_76_and_out expected 0 V
end
meas tran tran_76_or_out find v(or_out) at=15399n
if abs(tran_76_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_76_or_out expected 5 V
end
meas tran tran_77_sum find v(sum) at=15599n
if abs(tran_77_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_77_sum expected -5 V
end
meas tran tran_77_cout find v(cout) at=15599n
if abs(tran_77_cout-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_77_cout expected 5 V
end
meas tran tran_77_xdut_p find v(xdut.p) at=15599n
if abs(tran_77_xdut_p-(0.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_77_xdut_p expected 0.0 V
end
meas tran tran_77_and_out find v(and_out) at=15599n
if abs(tran_77_and_out-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_77_and_out expected 0 V
end
meas tran tran_77_or_out find v(or_out) at=15599n
if abs(tran_77_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_77_or_out expected 5 V
end
meas tran tran_78_sum find v(sum) at=15799n
if abs(tran_78_sum-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_78_sum expected 5 V
end
meas tran tran_78_cout find v(cout) at=15799n
if abs(tran_78_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_78_cout expected 0 V
end
meas tran tran_78_xdut_p find v(xdut.p) at=15799n
if abs(tran_78_xdut_p-(5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_78_xdut_p expected 5.0 V
end
meas tran tran_78_and_out find v(and_out) at=15799n
if abs(tran_78_and_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_78_and_out expected 5 V
end
meas tran tran_78_or_out find v(or_out) at=15799n
if abs(tran_78_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_78_or_out expected 5 V
end
meas tran tran_79_sum find v(sum) at=15999n
if abs(tran_79_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_79_sum expected -5 V
end
meas tran tran_79_cout find v(cout) at=15999n
if abs(tran_79_cout-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_79_cout expected 5 V
end
meas tran tran_79_xdut_p find v(xdut.p) at=15999n
if abs(tran_79_xdut_p-(5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_79_xdut_p expected 5.0 V
end
meas tran tran_79_and_out find v(and_out) at=15999n
if abs(tran_79_and_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_79_and_out expected 5 V
end
meas tran tran_79_or_out find v(or_out) at=15999n
if abs(tran_79_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_79_or_out expected 5 V
end
meas tran tran_80_sum find v(sum) at=16199n
if abs(tran_80_sum-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_80_sum expected 0 V
end
meas tran tran_80_cout find v(cout) at=16199n
if abs(tran_80_cout-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_80_cout expected 5 V
end
meas tran tran_80_xdut_p find v(xdut.p) at=16199n
if abs(tran_80_xdut_p-(5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_80_xdut_p expected 5.0 V
end
meas tran tran_80_and_out find v(and_out) at=16199n
if abs(tran_80_and_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_80_and_out expected 5 V
end
meas tran tran_80_or_out find v(or_out) at=16199n
if abs(tran_80_or_out-(5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_80_or_out expected 5 V
end
meas tran tran_81_sum find v(sum) at=16399n
if abs(tran_81_sum-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_81_sum expected -5 V
end
meas tran tran_81_cout find v(cout) at=16399n
if abs(tran_81_cout-(0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_81_cout expected 0 V
end
meas tran tran_81_xdut_p find v(xdut.p) at=16399n
if abs(tran_81_xdut_p-(5.0)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_81_xdut_p expected 5.0 V
end
meas tran tran_81_and_out find v(and_out) at=16399n
if abs(tran_81_and_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_81_and_out expected -5 V
end
meas tran tran_81_or_out find v(or_out) at=16399n
if abs(tran_81_or_out-(-5)) > 0.5
let const.failures=const.failures+1
echo FAIL: tran_81_or_out expected -5 V
end
plot v(x) v(a) v(b) v(cin) v(sum) ylimit -5.5 5.5 title 'Multiply-add SUM: all 81 states'
plot v(x) v(a) v(b) v(cin) v(cout) ylimit -5.5 5.5 title 'Multiply-add COUT: all 81 states'
plot v(xdut.p) v(sum) v(cout) title 'MUL product and multiply-add outputs'
plot v(a) v(b) v(and_out) v(or_out) ylimit -5.5 5.5 title 'AND=MIN / OR=MAX'
wrdata mac_tran.txt v(x) v(a) v(b) v(cin) v(sum) v(cout) v(xdut.p) v(and_out) v(or_out)
if const.failures = 0
echo PASS: multiply-add all 81 states
else
echo FAIL: multiply-add all 81 states
end
print const.failures
.endc"}
C {devices/netlist_options.sym} 1900 1050 0 0 {name=NETLIST_OPTIONS
lvs_netlist=false
top_is_subckt=false
spiceprefix=true
hiersep=.}
