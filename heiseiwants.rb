
=begin
楽しいRubyの課題を修正。

問題
コマンドラインから入力された年の単位を西暦から平成に変換するプログラムです。
この場合、入力された文字列を数値に変換し,1998をひいた値を表示します。

ad = ARGV[0].to_i
heisei = ad - 1988
puts heisei

if ad >= 1988
  puts　heisei
else
  puts "あなたが入力した年は平成じゃありません\n1988年からが平成です"
end


このプログラムに1988年以前を入力すると、返す値が0,もしくはマイナスになる
1988年以降は平成に換算できないのですからこのような入力を受け取ってしまう
ことがおかしいわけです。
なのでたとえば1988以下の数値を入力させない条件分岐を行えば良いのです。


ad = ARGV[0].to_i.chomp
heisei = ad - 1988

if ad >= 1988
  puts　heisei
else
  puts "あなたが入力した年は平成じゃありません\n1988年からが平成です"
end

=end




ad = ARGV[0].to_i
heisei = ad - 1988

if ad >= 1988
  puts  heisei
elsif ad <= 1988
  puts "入力しないで"
end
