Vyatta utils
============


手順
---

1.raccのインストール
  
    $ gem install racc

2.パーサ生成

    $ racc parse.y -o vyattaparser.rb

3.変換

    $ ruby convert.rb -i 変換したいファイル -o 出力先ファイル

出力先ファイルの指定を省略した場合は標準出力に出力する
