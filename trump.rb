
#sample 与えた引数だけ、ランダムに要素を取り出す。
# 配列式の%記法 %W(goo gaa goo) => ["goo", "gaa", "goo"]

#card = %w(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
#p card.sample(5)


card = (0..52).to_a
p card.sample(5)


=begin

FizzBuzzを土台にトランプゲームを考える

(0..52).each do |card|
  p card.sample
end


(1..100).each do |num|
  if num % 15 == 0
    puts "FizzBuzz"
  elsif num % 5 == 0
    puts "Buzz"
  elsif num % 3 == 0
    puts "Fizz"
  else
    puts num
  end
end
=end
