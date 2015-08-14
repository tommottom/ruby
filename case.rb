
=begin
case文の基本形
whenの値と比較し、真のときに条件文を処理し、偽のときには次の値と比較する

case 比較したいオブジェクト
when 値1　then
 文1
when 値2　then
 文2
when 値3　then
 文3
else
 文4
end

=end




tags = [ "A", "IMG", "PRE"]
tags.each do |tagname|
  case tagname
  when "P", "A", "B", "BLOCKQUOTE"
    puts "#{tagname} has child."
  when "IMG", "BR"
    puts "#{tagname} has no child"
  else
    puts "#{tagname} cannot be used"
  end
end

=begin

eachメソッド

配列.each do |変数|
繰り返したい処理
end

do endで囲まれている部分を「ブロック」と言います。
eachメソッドは、配列から要素を一つずつ取り出して「|変数|」で指定された変数に代入して
ブロック(do end)の中のメソッドを繰り返し実行していきます。

tagsという文字列の配列オブジェクトが生成されました。
そしてtagsの配列から要素を一つずつ取り出して、変数|tagsname|に代入しブロック
(do end)の中のメソッドを繰り返し実行していきます。

case文tagsnameオブジェクトをwhenの値と比較をし、真のときに条件式を実行します。そしてcase文の処理が終了
するまで処理を続けます。

=end
