#for構文の関する課題
#繰り返し処理とif構文の組み合わせをおこなう.
#配列をすべて出力してください、ただし、「１０以上の数値のみ」「「」」をつけて出力してください。

#今回の課題

number_list = [2, 39, 9, 3, 1, 35, 10, 11]
for number in number_list do

  if number >= 10
    puts "「#{number}」"
  else
    puts number
  end
end

=begin
今回の課題の理解出来ると楽しいPは、number_listに格納されている数値列をfor文を用いて
繰り返させ、if文で処理させている点。
例えば、for i in xを題材に考えてみる。
これは「xの要素をひとつずつiに代入して、なんらかの指定されている処理をおこなう」と言える。


そう考えるとfor number in number_list doというのは
「number_listの要素をひとつずつnumberに代入し、if文の処理おこなう」と言える。
最初に変数numberに代入される値は「2」です、その後にif文の処理が行われます。
⑴もし変数number(2)が「10」以上か、もしくは「10」と等しいときに「」で出力
⑵もしそれ以外であるなら、変数number(2)を出力。

そうやってnumber_listの要素をひとつずつnumberに繰り返し代入していき、if文の処理を行います。
そして、number_listの格納されている値を変数numberに代入し終えるまで処理を続けていきます。
=end
