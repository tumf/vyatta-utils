Vyatta utils
============

仮想ルータVyattaのユーティリティ

現在ある機能
----------

 - コンフィグファイルをコマンドライン形式へのコンバート


インストール手順
---------------

### githubから

    $ git clone git://github.com/tumf/vyatta-utils.git
    $ cd vyatta-utils
    $ bundle install
    
### RubyGemsから

    $ gem install vyatta-utils
    

config->command 変換
--------------------

Vyattaのconfigをコマンドライン形式に変換する。

    $ vyatta-config2command 変換したいコンフィグファイル -o 出力先コマンドファイル

入力先ファイルの指定を省略した場合は標準入力から入力する。
出力先ファイルの指定を省略した場合は標準出力に出力する。

config解析用のパーサ生成
----------------------

`lib/vyatta-utils/config.y`を修正したときには以下のコマンドでパーサを更新する。

    $ racc lib/vyatta-utils/config.y -o lib/vyatta-utils/config_parser.rb


[![endorse](http://api.coderwall.com/tumf/endorsecount.png)](http://coderwall.com/tumf)


