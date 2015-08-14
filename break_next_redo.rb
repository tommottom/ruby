puts "breakの例:"

i = 0
["Peal", "Paython", "Ruby", "Scheme"].each do |lang|
  i += 1
  if i == 3
    break
  end
  p [i, lang] #[2, "Paython"]
end


=begin
break文は繰り返し全体を中断します。上記の場合変数iが3の時に
6行目のbreakが実行されます

=end

puts "nextの例:"

i = 0
["Peal", "Paython", "Ruby", "Scheme"].each do |lang|
  i += 1
  if i == 3
    next
  end
  p [i, lang] #[2, "Paython"]
end

=begin
next文は繰り返しの中のnextより後の部分を飛ばして、次の回の処理を
開始します。
変数iが3の場合に6行目のnextが実行されると次にeachメソッドの繰り返しに
進みます。

=end



puts "redoの例:"

i = 0
["Peal", "Paython", "Ruby", "Scheme"].each do |lang|
  i += 1
  if i == 3
    redo
  end
  p [i, lang] #[2, "Paython"]
end

=begin

redo文
これは変数iが3のときに6行目でredoが実行されても、単に繰り返しの
先頭「i += 1」からやり直すために変数langが「Ruby」から「Scheme」
に変わらないのです。

=end
