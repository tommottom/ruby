#仕様は満たしている。より簡単にかけるかも。

=begin

1から順番に数をコマンドプロンプト/ターミナルに表示する。
その数が3で割り切れるなら"Fizz“
5で割り切れるなら"Buzz“
両方で割り切れるなら"FizzBuzz"と表示する。

あと最下のコードは下記サイトにのコードだ。
http://windhorn.hateblo.jp/

こうやってみるとrubyはメソッドを生成してからコードを書いたほうがより短いし、
楽だし、見た目綺麗にかけているのがわかる。

メソッド定義してからの方がRubyらしいんですね、つまりは。

=end


150.times do |i|

  i += 1
  if i % 3 == 0 and i % 5 == 0
    puts "FizzBuzz"
  elsif i % 3 == 0
    puts "Fizz"
  elsif i % 5 == 0
    puts "Buzz"
  else
    puts i
  end
end


def fizzbuzz(num)
 result = "fizzbuzz" if (num%5==0 && num%3==0)
 result = "fizz" if (num%3==0)
 result = "buzz" if (num%5==0)
 puts result.nil? ? num : result
end



#これはむずそうだね。あえてこんなむずそうな印象をあたえる意図はなんなんだろう。
module FixnumWithFizzBuzz
  refine Fixnum do
    def to_fizzbuzz
      [['Fizz', 3], ['Buzz',5]].
        map { |name, num| name if method(:%)[num].zero? }.
        join.
        tap { |str| break str.empty? ? self : str }
    end
  end
end
