# 1-trit multiply-add slice

`mac.sch` は組合せ回路 `X + A×B + Cin = Sum + 3×Cout`。
各tritの −1/0/+1 を −5/0/+5 V で表す。電源は VDD=+5 V、VSS=−5 V、VMID=0 V。
入力を電圧で式に入れる場合は `Vx + Va×Vb/5 + Vcin = Vsum + 3×Vcout`。
レジスタは含まないため、累積値の保存と桁シフトは外部で行う。

| 使用方法 | 固定する入力 | 演算 |
|---|---|---|
| ADD / FA | B=+5 V | X+A+Cin |
| SUB | B=−5 V | X−A+Cin |
| MUL | X=Cin=0 V | A×B（Cout=0） |
| NEG | X=Cin=0 V、B=−5 V | −A |

## ファイルと階層

- `mac.sch` / `mac.sym`：MUL×1 と既存FA×1。
- `mac_tb.sch`：全81入力と初期状態への復帰。シーケンスと期待値は回路図内の表に記載。
- `mac.gds`：上記の階層を保持した算術コア全体。MUL→ゲート、FA→HA→primitiveを保持。
- `mac.extracted`：公式LVSデッキの抽出結果。
- `mul.gds` と `mul_nand.gds` / `mul_nor.gds` / `mul_inv.gds`：サイジング済みMULと専用primitive。
- `layout/mac.ports.json` / `layout/mul.ports.json`：端子座標、配置、配線、元ファイルのハッシュ。

MUL専用ゲートは回路図のサイジング結果をそのままレイアウトした。
全MOSのL=1 µm、抵抗のW=2.8 µm。

| セル | PMOS W (µm) | NMOS W (µm) | RR L (µm) |
|---|---:|---:|---:|
| mul_nand（2個使用） | 19 | 13 | 15 |
| mul_nor | 37 | 6.5 | 15 |
| mul_inv | 13.5 | 5 | 15 |

合計112 MOS＋40 RR。セル内に明示的な負荷容量は置かず、TBのSum/Coutに各10 fFを置く。
既存の汎用NAND/NOR/INV、FA回路は変更していない。
ユーザー作業中の `full_adder.gds` も変更せず、MAC内のFAコピーだけに不足していたa/bのTXM1を戻した。

GDSはDBU=0.001 µm、製造・配置格子0.05 µm、全インスタンス倍率1。
MULの外形480×326 µm、MACは2233.4×378.7 µm（外接矩形約0.846 mm²）。
既存FAの配置を再利用したコアで、パッドフレームやESD保護は含まない。
GDS内に子セルの図形を収録しているので、外部BTライブラリを同梱しなくても図形は完結する。

## Xschemと通常シミュレーション

`mac_tb.sch` を開いて Netlist → Simulate。純正ngspiceの電圧plotを使用する。
200 nsごとに次の入力へ移り、入力エッジは1 ns。各区間の最後で期待値との差が±0.5 V以内か確認する。
X、A、B、Cinの順で −5/0/+5 V の全組合せを列挙する。最後に初期状態へ戻る。

```sh
python3 scripts/check_mac.py
```

通常TBに加え、81状態間の全6,480有向遷移を10 fFで確認する。
さらに1入力だけが変わる全648有向遷移を100 fFで確認する。
全遷移テストは120 ns保持、1 nsエッジ、最大刻み2 ns。
出力の整定時間は、入力エッジ終了からSum/Coutが±0.5 V以内に入り、区間末まで留まる時間。
連続したEuler巡回で全遷移を一度ずつ通るため、各遷移で回路状態をリセットしない。

過渡中は論理経路の遅延が異なるためグリッチが出る。整定後にサンプリングすること。
この試験は27 ℃、理想電源・理想入力源の条件であり、PVTやチップ間配線の保証ではない。

## レイアウト検証と抽出

```sh
python3 scripts/verify_arithmetic_layout.py mul_nand mul_nor mul_inv mul mac
python3 scripts/check_mac_driver.py
python3 layout/audit_arithmetic.py
QT_QPA_PLATFORM=offscreen /home/ishi-kai/bin/klayout/klayout -z -t -r scripts/check_arithmetic_gui.py
python3 scripts/check_mac_extracted.py
```

使用するPDKは `/home/ishi-kai/pdk/TR-1um` のdev版。
Drawing DRC 0件、階層内全セルとトップ端子を含めたstrict LVS一致を確認する。
通常GUIメニュー用の参照SPICEは `simulation/mul.spice` と `simulation/mac.spice`。
再生成は最初のverifyコマンドで行える。比較の緑表示だけでなく、ポート不足等のエラーログも確認する。

単体MACのマスクDRCには外部入力の `WAR06: Floating SG Detected` が14件残る。
4入力をVDDへ実配線した別の診断用親セルではDrawing/LVS/マスクDRCとも合格、マーカー0件。
本来の回路への入力固定や、DRCの免除領域は追加していない。
パッドを接続した最終TOPでの再確認は別途必要。

抽出シミュレーションでは、抽出したsubcktの端子順と匿名内部ノードを接続構造から対応付ける。
初期動作点に一般的な推定値だけを使うと、PDKモデルが非物理的な解へ収束する場合がある。
そのため最新の回路図で初期入力のDC動作点を求め、対応する内部電圧を抽出側の `.nodeset` に使う。
これはNewton法の初期推定であり、電圧源での固定や `.ic` / `uic` による動作点の省略ではない。
抽出回路の動作点を解き直してから全シーケンスを実行する。

**この抽出は素子接続・MOS接合面積/周長とモデル内部容量を反映するが、配線寄生R/Cは含まない。**
抽出デッキとGDS、参照回路、PDKのハッシュを記録し、古いLVS結果での解析を拒否する。

抽出波形を純正plotで見る場合：

```sh
cd simulation/mac/extracted/tb_sequence
ngspice view.spice
```

全遷移データは `simulation/mac/{schematic,extracted}/all_6480_10f/`、
100 fFの1入力遷移は同じ階層の `single_input_648_100f/`。
`tb.spice`、`run.log`、波形、遷移ごとの `results.json` を保存する。
要約は `reports/mac.json` / `reports/mac_extracted.json`。
