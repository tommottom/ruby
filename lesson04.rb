
#ARGVという配列オブジェクトかつ引数[0]を変数xに代入しています。
x = ARGV[0]

#if文を用いて、実行時の引数が「0」以下の数値の場合は苗字を出力
#実行時の引数が「1」の場合は名前を出力
#実行時の引数がそれ以外の場合はフルネームを出力

#まずはif文の基本形

x = 3
if x == 0
  puts "takahashi"
elsif x == 1
  puts "tomoki"
else
  puts "tomoki takahashi"
end

#if分の構造がこうなります、

=begin

if 条件1
　文１
elsif 条件2
　文2
else
　文3
end

=end

=begin
ARGVの配列オブジェクトを代入しているためコマンドラインから何らかの
値が代入されることを想定したコードにrefineする必要があります。
またコマンドラインから代入された値は、文字列として代入されるため
to_iメソッドを用いて数値型に変換する必要があります。

今回のif文の構造に関して
ユーザーがコマンドラインから「0」もしくは「0」以上の値の入力した場合「苗字」
ユーザーがコマンドラインから「1」の値を入力した場合は「名前」
ユーザーがコマンドラインから「0」もしくは「1」以外の値の入力をした場合「苗字」
=end


x = x.to_i

if x <= 0
  puts "takahashi"
elsif x == 1
  puts "tomoki"
else
  puts "tomoki takahashi"
end
