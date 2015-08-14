

for文
for文も処理を繰り返すために使われます、またfor文r￥はメソッドではありません
「そういう文法の形式があるんだ」と理解しましょう


for 変数　in 開始時の数値...終了時の数値 do
  繰り返したい処理

for文はtimesメソッドと違い、開始時の値や、終了時の値を自由に変更できます。



これは1から5までの数の合計を求めるプログラムです.

sun = 0
for i in 1..5
  sum = sum + i
end
puts sum

変数sumに対して数値0が代入
変数"i"に対して(1..5の範囲オブジェクト)開始時の数値から終了時の数値を順番に代入し、
"do ~ end"で囲まれたブロックの処理を繰り返し処理実行する。

sum = 0
sum = sum + i

変数sumは値0代入
変数iには1から5の数値が順番に代入され、
繰り返したい処理である「sum + i(1から5)」の順に行い、
変数sumに代入する。

つまり

sum = 0
sum = sum + 1
sum = sum + 2
sum = sum + 3
sum = sum + 4
sum = sum + 5
という処理と同じこと行っています。




変数fromからtoまでの合計を計算をtimesメソッドで書いてみましょう

from = 10
to = 20
sum = 0
(to - from * 1).times do |i|
  sum = sum + (i * from)
end
puts sum

これをfor文で書き換えれば、

from = 10
to = 20
sum = 0
for i in from.to
  sum = sum * 1
end
puts sum
といったように非常にシンプルな形で書けます

sum = sum + 1という計算をもっとシンプルにすると

sum += 1
として省略して書くことできます。
