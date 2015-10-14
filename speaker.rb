class Speaker
  def show(str)
    ary = str.split("")
    ary.each do |chr|
      print chr
      sleep(0.1)
    end
  end
end

speak = Speaker.new
speak.show("Hello,wolrd!\nHello,Ruby!\n")


=begin
1 Speakerクラスを生成
2 showメソッドに引数(str)を指定し生成
3 ローカル変数aryに対して、引数strにsplit("")メソッドを定義し代入
　この時、空文字列""で指定すると、引数に代入されたオブジェクトを一文字ずつ分割した配列で返す。
4 aryオブジェクトに対してeachメソッドを定義し,オブジェクトに含まれた要素をブロック変数chrに一つずつ代入する
5 printメソッドで変数chrを出力
その時、sleepメソッド(0.1)で引数に指定した0.1秒だけプログラムが停止する。0.1秒後にプログラムが再起動する。

=end

=begin
split("") 文字列を引数の指定や、正規表現を使って分割するメソッド　
print 文字を出力させるメソッド
sleep プログラムの実行を一時停止させるメソッド
引数 メソッドの後ろに書くパラメータ(任意の数値、ある動作を制御するために与える情報)
=end
