

#mapメソッドに関しての学習

#FizzBuzzを判定するメソッド

def fizzbuzz(num)
  return :FizzBuzz if num % 15 == 0
  return :Bizz if num % 5 == 0
  return :Fizz if num % 3 == 0

  num
end


=begin

各要素に対して、{}ブロック内の式を実行した結果を返します

[1, 2, 3].map { |n| n * 3}
[3, 6, 9]
=end

(1..100).map { |num| fizzbuzz(num)}.each do |num|
  puts num
end

=begin

1から100の数値を変数|num|に代入して、
fizzbuzzメソッドで変数numに代入された数値を判定して、
eachメソッドで一つずつ変数|num|にいれて、putsメソッドで出力する

=end
