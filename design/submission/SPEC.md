# 平衡3値 Multiply-Add仕様

## 基本仕様

| 項目 | 値 |
|---|---|
| 演算 | X + A×B + Cin = Sum + 3×Cout |
| 論理出力 | and_out=min(A,B)、or_out=max(A,B) |
| 論理値と電圧 | −1 / 0 / +1 ⇔ −5 / 0 / +5 V |
| 電源 | VDD=+5 V、VMID=0 V、VSS=−5 V |
| 回路 | 組合せ回路、PMOS 59、NMOS 59、RR 46 |
| 端子数 | 11本。共通VSSを除くと10本 |
| コア外形 | 1774.7 × 779.35 µm |
| 割当領域 | 1800 × 1000 µm |
| 提出GDSトップ | mac |
| GDS単位 | DBU=0.001 µm、配置格子0.05 µm |
| PDK | TR-1um dev、revision 9ef2ac38e1717b3ba2a4b0b374e48c53017e952c |

X、A、B、Cin、Sum、Coutは平衡3値の論理値です。共通基板とVSSは−5 V、VMIDは0 Vに接続します。

## 端子

座標はGDS原点からのµmです。TXM1（48/0）とTXM2（49/0）で端子名を示しています。

| 端子 | 方向 | 機能 | 接続層 | X | Y |
|---|---|---|---|---:|---:|
{{PORTS}}

[![M1/M2の端子位置](mac_pins.png)](mac_pins.png)

## 入力の与え方

| 演算 | X | A | B | Cin | 結果 |
|---|---|---|---|---|---|
| ADD | u | v | +1 | carry | u+v+carry |
| SUB | u | v | −1 | carry | u−v+carry |
| MUL | 0 | u | v | 0 | Sum=u×v、Cout=0 |
| NEG | 0 | u | −1 | 0 | Sum=−u、Cout=0 |
| Multiply-add | acc | u | v | carry | acc+u×v+carry |

ADD/SUBではCoutを次段のCinへ接続して多tritの計算を行えます。5段連結の代表試験では、正負carry伝搬など19種類の入力を5 µs保持で確認しました。各段の出力に10 pF || 1 MΩを接続し、Coutには次段Cinの入力容量も接続しています。

## 検証結果

理想±5 V / 0 V電源、27 ℃、1 ns入力エッジ、各出力10 pF || 1 MΩで測定しました。Sum / Cout / AND / ORと内部積Pを期待値±0.5 Vで判定しています。

| 回路 | 試験 | 負荷 | 最大出力誤差 | 最大整定時間 | 判定 |
|---|---|---:|---:|---:|---|
{{RESULTS}}

{{ERROR_DETAIL}}

最終抽出回路で81入力、全6,480有向遷移、単一入力648遷移を確認しました。5段連結の代表試験も全23区間で合格し、最大整定時間は約1.181 µsでした。

レイアウトはTR-1um dev版のDrawing DRC 0件、階層内の全セルとトップ端子を含むstrict LVS一致。入力をVDDへ配線した診断用親セルでは、製造マスクDRCも0件です。提出GDSと編集用GDSの図形・ラベルも一致しています。

## Xschem・KLayoutでの使い方

TR-1um dev PDKを設定したXschemでmac_tb.schを開き、Netlist → Simulateを実行します。XSCHEM_LIBRARY_PATHにこのフォルダとPDKのlibs.tech/xschemを含め、LIBをPDKのlibs.tech/spice/modelsに設定します。TBのCsum / Ccout / Cand_out / Cor_outで出力容量を設定します。

KLayoutではmac.gdsのトップmacを開きます。通常LVSの回路参照は同梱のsimulation/mac.spiceです。mac.extractedは素子抽出結果として利用できます。

## セル階層

| セル | 構成 |
|---|---|
| MAC | MUL ×1、FA ×1、出力復元用INV ×3 |
| MUL | NAND ×2、NOR ×1、INV ×1 |
| FA | HA ×2、NANY ×1、INV ×1 |
| HA | NANY ×5、INV ×2。SUMとCARRYの中間信号を共有 |

NANYは−sat(A+B)を8 MOS＋2 RRで実装しています。
