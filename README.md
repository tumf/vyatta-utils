Vyatta utils
============

仮想ルータVyattaのユーティリティ

現在ある機能
----------

 - コンフィグファイルをコマンドライン形式へのコンバート


インストール手順
---------------

1.raccのインストール
  
    $ bundle install

config解析用のパーサ生成
----------------------

`lib/vyatta-utils/parse.y`を修正したときには以下のコマンドでパーサを更新する。

    $ racc parse.y -o vyattaparser.rb


config->command 変換
--------------------

Vyattaのconfigをコマンドライン形式に変換する。

    $ ruby convert.rb -i 変換したいファイル -o 出力先ファイル

出力先ファイルの指定を省略した場合は標準出力に出力する
