=begin

grep.rbで定義したsimple_grepメソッドをuse_grep.rbで呼び出しています。
simple_grep.ebと同じようにファイルChangeLog.txtから「matz」という文字列
が含まれている行を出力します。
=end


=begin

他のプログラムから読み込んで利用するためのプログラムを「ライブラリ」と言います。

そしてライブラリをスクリプトと同じデォレクトリにおいた場合は、「./」
を入れてカレントデォレクトリ(現在のディレクトリ)にあることを明示する必要があります。

require 使いたいライブラリのファイル名
requireメソッドを呼び出すとRubyは引数に指定されたライブラリをさがして、
そのファイルに書かれた内容を読み込みます。
そしてライブラリの読み込みがおわると、requireメソッドの次の行から再開します。

=end


require "./grep" #grep.rbの読み込み(.rbは必要ない)

pattern = Regexp.new(ARGV[0])
filename = ARGV[1]
simple_grep(pattern, filename) #simple_grepメソッドの起動
