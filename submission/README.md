# 平衡3値 Multiply-Add / AND / OR — OpenSUSI TR-1um

−1/0/+1を−5/0/+5 Vで表す、1 tritの乗算加算・AND・OR回路です。共通VSSを除く10端子で、ADD / SUB / MUL / NEG / multiply-addを入力の与え方で選べます。コア外形は1783.7 × 779.35 µmで、1800 × 1000 µmの領域に収まります。

## 提出物

| 項目 | ファイル |
|---|---|
| トップ回路図・シンボル | [mac.sch](mac.sch) / [mac.sym](mac.sym) |
| シミュレーション用回路図 | [mac_tb.sch](mac_tb.sch) |
| レイアウト | [mac.gds](mac.gds)（top: mac） |
| 仕様・端子座標・操作方法 | [SPEC.md](SPEC.md) |
| LVS用の階層SPICE | [simulation/mac.spice](simulation/mac.spice) |
| 素子抽出回路 | [mac.extracted](mac.extracted) |

子セルの回路図とシンボルも同梱しています。GDSには階層内の全図形が含まれます。

## 回路の特徴

- 乗算加算：X + A×B + Cin = Sum + 3×Cout
- AND / OR：and_out=min(A,B)、or_out=max(A,B)
- Coutを次段のCinへ接続でき、5段の連結試験も実施
- primitive（基本セル）として、MOSと抵抗から直接組んだinverter、nany、mul_nand、mul_nor、mul_invの5種類を用意。これらをMUL、HA、FAで組み合わせてMACを構成し、HAの中間信号はSUMとCARRYで共有
- 電源はVDD=+5 V、VMID=0 V、VSS=−5 V。59 PMOS、59 NMOS、46 RRで構成

TR-1um dev PDKでDrawing DRC 0件、strict LVS一致。最終抽出回路では81入力、全6,480有向遷移、単一入力648遷移を検証しました。評価条件は27 ℃、理想電源、各出力10 pF || 1 MΩです。

右上の空間には、M2で「EINOSUKE / OKAZAKI」とペンギンのシリコンアートを配置しています。

## レイアウト全体

[![MACレイアウト全体](mac_layout.png)](mac_layout.png)

## 回路図全体

[![MACの階層回路図](mac_schematic.svg)](mac_schematic.svg)

## 端子位置

[![実配線上の端子位置](mac_pins.png)](mac_pins.png)
