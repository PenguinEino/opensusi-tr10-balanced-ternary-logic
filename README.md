# 平衡3値論理回路 — OpenSUSI TR-1um

**提出物は [submission/](submission/README.md) にまとめています。**
−1/0/+1を−5/0/+5 Vで表す論理ゲートと、1 tritの乗算加算コアです。
提出版は乗算加算、AND、ORを11端子（共通VSSを除くと10端子）から評価できます。

| やりたいこと | 場所 |
|---|---|
| 提出物を見る／渡す | **[submission/](submission/README.md)** |
| 仕様・端子座標・使い方を読む | [submission/SPEC.md](submission/SPEC.md) |
| 提出版GDSを開く | [submission/mac.gds](submission/mac.gds)（top: `mac`） |
| トップ回路図・TBを編集する | [mac.sch](mac.sch)・[mac_tb.sch](mac_tb.sch) |
| INV / NAND / NORを試す | [inverter_tb.sch](inverter_tb.sch)・[nand_tb.sch](nand_tb.sch)・[nor_tb.sch](nor_tb.sch) |
| 検証結果と残る条件を確認する | [MAC_FINAL_REVIEW.md](MAC_FINAL_REVIEW.md) |

## 仕様

| 項目 | 値 |
|---|---|
| 乗算加算 | `X + A×B + Cin = Sum + 3×Cout` |
| 追加出力 | `and_out = min(A,B)`、`or_out = max(A,B)` |
| 電源 | VDD=+5 V、VMID=0 V、VSS=−5 V |
| 論理値 | −1 / 0 / +1（−5 / 0 / +5 V） |
| 構成 | 組合せ回路。MOS・抵抗による基本セルをMUL、HA、FAで再利用してMACを構成 |
| コア外形 | 1783.7 × 779.35 µm（割当領域1800 × 1000 µm） |
| 出力の評価条件 | 各10 pF以下・1 MΩ以上。単体試験は入力確定後1 µsで判定 |

B=+1なら加算、B=−1なら減算、X=Cin=0なら乗算として使えます。
複数コアのCout→Cin接続も可能です。5段連結の代表試験では最大整定時間が約1.18 µsだったため、連結時は単体の1 µs待ちを使いません。入力と端子の詳細は[仕様書](submission/SPEC.md)を参照してください。

## PDKと検証

[OpenSUSI TR-1um PDK](https://github.com/OpenSUSI/TR-1um) の`dev`ブランチ、コミット`9ef2ac38e1717b3ba2a4b0b374e48c53017e952c`を使用しています。GDSのDBUは0.001 µmです。Xschem、KLayout、ngspiceで回路図・レイアウト・シミュレーションを扱います。

提出版のDrawing DRCは0件で、strict LVSは一致しています。最終抽出回路では81入力、全6,480有向遷移、単一入力648遷移を検証しました。これらは27 ℃・理想電源・各出力10 pF || 1 MΩでの結果です。配線RC、実パッド/ESD、採用した±5 V条件の耐圧確認については[最終レビュー](MAC_FINAL_REVIEW.md)に記載しています。
