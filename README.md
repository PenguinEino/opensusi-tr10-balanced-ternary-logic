# 平衡3値論理ゲートとテストベンチ

現在のIC採用方針は [IC_PLAN.md](IC_PLAN.md)。IC向けNANYの正本は `nany.sch / nany.sym`、HAは `half_adder.sch / half_adder.sym`。旧NSIGN系は過去の実験用です。NANYの回路基準と検証は [NANY_CELL.md](NANY_CELL.md)。


## セル・シンボル・TBの構成

全ゲートを、端子付きセル `.sch` → `.sym` → シンボルを配置する `_tb.sch` に統一しました。

| 論理 | セル | シンボル | 単体TB | セル端子 |
|---|---|---|---|---|
| NOT | inverter.sch | inverter.sym | inverter_tb.sch | vin(in), vout(out), VDD/VSS(inout) |
| NAND | nand.sch | nand.sym | nand_tb.sch | a/b(in), vout(out), V+/V-(inout) |
| NOR | nor.sch | nor.sym | nor_tb.sch | a/b(in), vout(out), V+/V-(inout) |
| NSIGN | nsign.sch | nsign.sym | nsign_tb.sch | a/b(in), vout(out), V+/V-/V0(inout) |

セル内部に明示的な負荷容量はありません。各単体TBの `Cload=10f` で設定します。
NSIGNの `V0` は逆符号時の0 Vクランプの基準端子で、TB側のGNDへ接続します。
MOS/RRの寸法・接続はセル `.sch` だけを編集すれば全TBへ反映されます。モデルの寄生容量は残ります。
単体TBの入力シーケンス、測定時刻、DC/過渡解析、純正ngspice電圧plotは維持しています。
整形後、4単体TBとNOT/NORの連結TBを再実行し、接続・論理値を確認しました。ログは `simulation/hierarchy/`。

`inverter_tb.sch` をXschemで開き、Netlist → Simulateで実行します。
`../sram` と同じTR-1umモデルの読み込み、電圧源、`SIMULATION`コード、ngspiceの波形表示を使います。

現在のユーザー設定はLVS用なので、**Netlistの前に** Simulation → LVS の
「LVS netlist + Top level is a .subckt」をOFFにしてください。
Flat netlistもOFFにします。TB内の `NETLIST_OPTIONS` は `spiceprefix=true` を設定します。
SRAM専用の自動切り替えフックはこのディレクトリには適用されません。

- 電源 `V+ = +5 V`、`V- = -5 V`、GND = 0 V、27℃。論理値 −1／0／+1 は電圧 −5／0／+5 Vです。
- DC：入力−5～+5 V、刻み0.015625 V。3入力値での出力を測定します。刻みは端点5 Vを正確に含む値です。
- 過渡：入力−5 → 0 → +5 → 0 → −5 → +5 → −5 V。各区間20 ns、遷移1 ns、全体140 ns。各区間の末尾1 ns手前で出力を測定します。
- 電圧源 `VDD`（+5 V）と `VSS`（−5 V）で電源、`VIN` のプロパティで入力、`SIMULATION` で解析・測定・プロットを編集します。
- `.nodeset v(vout)=5` は初期動作点の収束補助です。出力電圧を固定する指定ではありません。

調整結果と比較条件は [TUNING.md](TUNING.md) を参照してください。
現在の寸法はPMOS W/L=13.5/1 µm、NMOS W/L=5/1 µm、RR各W/L=2.8/20 µm（各約6.06 kΩ）です。
入力−5／0／+5 Vに対するDC出力は+5 V／約+0.067 mV／−5 Vで、過渡解析でも整定を確認しています。
中間帯の出力も `SIMULATION` 内で測定します。
`inverter_tb.sch` は `inverter.sym` 経由で `inverter.sch` を参照します。

DC・過渡ともngspice標準のプロットで電圧波形を表示します。電流表示・外部画像ビューアの起動はありません。

## 2段接続テスト

`inverter.sym` は `inverter.sch` を参照する4端子（vin、vout、V+、V−）の階層部品です。
本体に明示的な負荷容量はありません。素子寸法を `inverter.sch` で変更すると、2段ともその値を使用します。

`inverter_chain_tb.sch` を開き、LVSをOFFにしてNetlist → Simulateで実行します。
`vin → x1 → vmid → x2 → vout` を実配線で接続し、最終出力だけに `Cload=10f` を付けています。
1段目は2段目のMOSゲートを直接駆動します。MOS・RRモデル内の寄生容量は含まれます。
負荷容量はTB内のCloadで編集してください。

DCは入力−5～+5 Vを掃引し、入力・中間出力・最終出力を表示します。
過渡は−5→0→+5→0→−5→+5→−5 V、20 ns間隔、1 ns遷移、全体140 ns。
3波形と各区間末尾での出力・入力との差を確認できます。

27℃・±5 V・最終負荷10 fFで、DC出力は入力−5／0／+5 Vに対して−5／約+0.0000506／+5 V。
過渡の7観測点でも最大誤差約0.0000506 Vで整定しています。遷移中には2段分の遅延があります。
この確認は3値の論理復元であり、任意の中間入力電圧をそのまま再現する線形バッファではありません。
検証ログは `simulation/cascade/` にあります。`inverter_tb.sch` も同じセルのシンボルを使用します。

## 3値NAND：y = -min(a, b)

`nand_tb.sch` は `nand.sym` 経由でRR付き `nand.sch` を参照し、TB側に10 fF負荷を持ちます。
電源±5 V、27℃。論理−1／0／+1を−5／0／+5 Vに対応させます。

DCはBを−5／0／+5 Vに固定してAを−5～+5 Vで掃引し、全9入力組を測定します。
過渡は1区間20 ns、遷移1 ns、全体200 ns。最初の9区間で全入力組を通り、最後に開始状態へ戻ります。
シーケンス、期待出力、測定時刻は回路図に記載しています。
ngspice標準プロットで入力・出力・期待波形 `expected` を表示します。
期待波形用の独立した行動電圧源はDUTに接続していません。
各測定点で出力誤差を測り、仮の許容誤差±0.5 VでPASS/FAILを表示します。

現在のNANDは寸法調整済みです。PMOS各24/1 µm、NMOS各16/1 µm、RR各2.8/15 µm。
全9入力のDC・過渡観測点が±0.5 V判定でPASSしました。中間値の最大誤差は約0.190 Vです。
寸法・速度・平坦さの比較と検証範囲は [NAND_TUNING.md](NAND_TUNING.md) を参照してください。

## 3値NOR：y = -max(a, b)

`nor.sch` は上側PMOS直列・中央RR2個・下側NMOS並列に整理しています。
RRのSUBをV+へ接続し、負荷容量はTB側に置いています。寸法は下記の調整結果を反映しています。

`nor_tb.sch` は `nor.sym` 経由でこの回路を参照します。電源±5 V、27℃。
DCはBを−5／0／+5 Vに固定してAを掃引、過渡は全9入力組＋開始状態への復帰を200 nsで確認します。
入力・期待出力・測定時刻は回路図に記載し、ngspice標準プロットに期待波形 `expected` を重ねます。
各測定点は期待値±0.5 Vで判定します。

NORは寸法調整済みです。PMOS各46/1 µm、NMOS各6.5/1 µm、RR各2.8/17 µm。
27℃で中間出力誤差は最大約0.198 V、通常TBの全DC・過渡観測点がPASSです。
数値安定化のため `.options rshunt=1e12` を設定しています。
寸法・速度・温度での制約は [NOR_TUNING.md](NOR_TUNING.md) を参照してください。


## NORの6段接続・誤差伝搬テスト

`nor_chain_tb.sch` は `nor.sym` / `nor.sch` を6段ずつ、3列接続します。
A入力を伝搬してB=-5 V、B入力を伝搬してA=-5 V、A/B両入力を束ねる、の3条件です。
`nor.sch` は入出力・電源ポートを持つセルにし、内部の10 fFを除去しました。
負荷はTBの各最終段に10 fF、段間は次段MOSの実入力容量です。単体の `nor_tb.sch` の10 fFは残しています。

- DC: 入力を-5～+5 Vで掃引。全域は奇数段の符号を反転して比較、0 V付近の拡大は各段の実電圧。
- 過渡: 200 nsごと、1 nsエッジ。3値の全6方向の遷移と、0 Vに±0.2/±0.5/±1 Vを加えた入力を試験。
- 各区間末尾の1 ns前に全18出力を測定し、期待論理電圧との差が±0.5 V以内か判定。入力の±1 Vまでは論理0として扱います。
- 従来どおりLVSを無効にしてNetlist→Simulate。電圧のみのngspice純正plotを使用します。

27℃・公称モデルでは270測定点がすべてPASSでした。
0 V付近の入力を変えても、6段目はA経由で約+0.173 V、B経由で約+0.163 V、両入力接続で約-0.165 Vへ収束します。
例えばA経由のDCで入力+0.5 Vは、+0.1297 → +0.1786 → +0.1717 → +0.1727 → +0.1726 → +0.1726 V。
誤差が単調に減るとは限りませんが、入力の違いによるばらつきは縮み、回路固有のオフセットへ収束します。
これは上記3接続・公称温度での結果です。任意の混在した論理回路や温度・製造ばらつきまで保証する試験ではありません。
結果はシミュレーション実行先の `nor_chain_dc.txt` / `nor_chain_tran.txt` に保存します。

## NSIGN（符号反転型飽和加算）のシミュレーション

`nsign_tb.sch` / `nsign.sym` を追加しました。元の `nsign.sch` をそのまま使用します。
9入力組み合わせのDC、10 fF負荷での過渡、逆符号入力の履歴依存、±1 nAの出力負荷感度を検証します。
回路の極性は `y = -sign(a+b)`。追加したGNDクランプにより逆符号入力でも0 Vへ戻り、最新の全17測定点はPASSです。重複pMOSは除去済みで、セルのV0端子をTBのGNDに接続します。
結果と実行方法は [NSIGN_SIMULATION.md](NSIGN_SIMULATION.md) を参照してください。


## 4回路の追加レビュー

最新版の評価は [CIRCUIT_REVIEW.md](CIRCUIT_REVIEW.md) を参照してください。
`python3 scripts/review_circuits.py` で、全入力遷移、二次元DC、温度/電源、実ゲート負荷、入力時間差、混在6段接続を再評価できます。
NSIGNの重複除去後の値、セル内部負荷とTBの説明の違いも同文書に記録しています。


## NSIGNの寸法調整

主回路pMOS/nMOSは34/11 µm、0 VクランプpMOS/nMOSは14/8 µm（MOS長はすべて1 µm）、RRは各2.8/16 µmに調整しました。
27℃・±5 Vの公称9点の最大誤差は約2.49 mV、10 fFで全72遷移の最悪整定は約7.58 ns。
寸法面積の目安は約35%減。温度/電源変動時の余裕とのトレードオフを含め、最新の結果は [NSIGN_TUNING.md](NSIGN_TUNING.md) を参照してください。

## CONS / Half Adder CARRY

`cons.sch` / `cons.sym` / `cons_tb.sch` を追加しました。
`T=NSIGN(A,B)`、`U=NSIGN(B,T)`、`NA=INV(A)`、`Y=NSIGN(NA,U)` の4ゲート構成です。
入力が一致すればその値、それ以外は0を出力します。セル内部の負荷はなく、TB側に10 fFを接続します。
9入力のDC・過渡と内部信号を検証し、全72遷移・負荷・入力時間差の追加試験も用意しました。
実行方法と結果は [CONS_SIMULATION.md](CONS_SIMULATION.md) を参照してください。


## 平衡3値 Half Adder（SUM + CARRY）

`half_adder.sch` / `half_adder.sym` / `half_adder_tb.sch` を追加しました。
NANY×5＋INV×2を直接接続し、TとCARRYを内部共有して `A+B = SUM+3*CARRY` を実現します。
負荷容量はTB側でSUM・CARRYに各10 fF。9入力のDC・過渡と全72遷移を検証します。
構成、実行方法、測定結果、DC収束条件は [HALF_ADDER_SIMULATION.md](HALF_ADDER_SIMULATION.md) を参照してください。


## PTI / NTI（抵抗なし2MOS試作）

`pti.sch / pti.sym / pti_tb.sch` と `nti.sch / nti.sym / nti_tb.sch` を追加しました。
PTIは入力−5/0/+5 Vに対して出力+5/+5/−5 V、NTIは+5/−5/−5 Vを狙った寸法比のCMOSインバータです。
0 V入力の公称出力はPTI +4.7728 V、NTI −4.7882 V。負荷10 fFはTB側に置いています。
DC、全6遷移、100 fF、温度/電源範囲の結果は [THRESHOLD_INVERTERS.md](THRESHOLD_INVERTERS.md) を参照してください。


## INVレイアウト

完成版は [inverter.gds](inverter.gds)（top `inverter`）、84×66 µm。
ルート直下の `inverter.gds` が完成版です。旧下書きは `layout/backups/` に退避済みです。
公式Drawing DRC 0件、現在の回路図とのstrict LVS一致。配置用端子情報・再生成方法・未接続入力のマスク警告の扱いは [layout/INVERTER_LAYOUT.md](layout/INVERTER_LAYOUT.md)。
INVの電源端子はVDD/VSSに統一。素子寸法は変更していません。


## NANYレイアウト

完成版は [nany.gds](nany.gds)（top `nany`）、132×115 µm、8 MOS＋2 RR。
Drawing DRC 0件、strict LVS一致、標準GUIメニューからも確認済みです。
単体maskは未接続入力の警告6件のみ。2段実配線fixtureはmaskも0件です。
再利用条件・端子・検証結果は [layout/NANY_LAYOUT.md](layout/NANY_LAYOUT.md)。


## GDSの単位

GDSと新規親レイアウトのDBUは **0.001 µm** に統一します。0.1 µm指定は撤回済みです。
子セルの配置倍率は1。粗いDBUは形状やDRCの判定値を丸めるため使いません。
INVのPMOSも寸法13.5/1 µmのlive PCellに戻しています。


## 使用中のPDK

2026-09-24にTR-1umを`dev`（切替時コミット`9ef2ac38e1717b3ba2a4b0b374e48c53017e952c`）へ変更しました。
使用先は`/home/ishi-kai/pdk/TR-1um`、devソースは`/home/ishi-kai/src/TR-1um`です。
再インストール後、使用先はsymlinkではなくコピーになっています。
切替履歴は [design/pdk_active.json](design/pdk_active.json)。
DBUを0.001 µmに戻し、RRのGCコンタクトを認識領域の外へ移した現行GDSは、
dev版のDrawing DRC 0件、strict LVS一致です。単体maskの未接続入力警告は保持しています。
GUI・実配線fixtureの再検証結果は`reports/`を参照してください。
