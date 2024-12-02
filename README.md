## robosyskadai

![test](https://github.com/HarukiHaneo/robosyskadai/actions/workflows/test.yml/badge.svg)

## 概要
- ロボットシステム学の課題用プログラム
- 入力した値(cm)を寸や尺という長さの単位に変換して出力する機能を持つ

## 使用方法
- 1.リポジトリをダウンロードする。  
`git clone https://github.com/HaneoHaruki/robosyshomework.git`
`cd robosyshomework`
- 2.必要に応じて実行権限を付与する。  
`chmod +x cmtosun`
- 3.ターミナルで以下のコマンドを実行。  
`echo 好きな数字 | ./cmtosun`
- 4.実行結果が表示される。  
`変換された値寸`

## 動作環境
- Python:  Python3.7, 3.8, 3.9, 3.10

## 使い方
実行方法の例

入力時1  
`echo 30 | cmtosun`

出力時1  
`9.90寸`

入力時2  
`echo 100 | cmtosun`

出力時2  
`3.30尺`

## テスト
- 1.ターミナルで以下のコマンドを実行。  
`./test.bash`
- 2.テストに成功するとOKというメッセージが表示される。  
`OK`

## ライセンス
- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
- © 2024 Haruki Haneo

