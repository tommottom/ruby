
#おもろーqiita
#http://qiita.com/esehara@github/items/a4fbdc64896663add2ab

#FizzBuzzを判定するメソッドをを生成する。
#メソッドに戻り値として、必ずnumを返す
def fizzbuzz(num)
  return :FizzBuzz if num % 15 == 0
  return :Buzz if num % 5 == 0
  return :Fizz if num % 3 == 0

  return num
end

#fizzbuzz_resultにfizzbuzz(num)の値を末尾に追加する
fizzbuzz_result = []
(1..100).each do |num|
  fizzbuzz_result << fizzbuzz(num)
end

#判定後のArrayを画面に出力する

fizzbuzz_result.each do |num|
  puts num
end



=begin

以下お勉強

#判定メソッドをを使い、判定語の値を持つArray=配列オブジェクトを生成
#Array#<<メソッド
#指定されたオブジェクトを自身の末尾に破壊的(オブジェクト自身が変更されるメソッド)に追加します。
#Array#<<メソッドの使い方

ary = [1]
ary << 2 << 4 << 4
p ary

#Rubyの破壊的メソッドの他の例に関して
#chopメソッド(文字列の末尾を削るメソッド)から見る破壊的メソッド(オブジェクト自身変更されるメソッド)
#破壊的メソッドを使用するべきではない。なぜなら、オブジェクトそれ自身の挙動を変更するから
#またはそのオブジェクトに付随するすべてのオブジェクトに影響するから

a = "tom"
p a.chop #=> "to"
p a      #=> "tom"

p a.chop! #=> "ba"
p a       #=> "ba"


=end
