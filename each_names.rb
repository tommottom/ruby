
#eachメソッドはオブジェクトの集まりに対して、それを一つずつ取り出す時に
#使います。

　
names = ["ark", "ruby", "paython"]
names.each do |name|
  puts name
end


#例えば、範囲オブジェクトを使ってeachメソッドで書いてみます。

sum = 0
(1..5).each do |i|
  sum += i
end
puts sum
