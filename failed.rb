
first = ["結論だけ書く"]
miss = ["失敗した", "私は", "失敗した", "失敗した", "私は", "失敗した", "私は", "失敗した", "失敗した", "失敗した", "失敗した", "失敗した", "私は", "失敗した"]
last = ["................... ............... ..........................しっぱ"]

puts first
puts miss.shuffle
puts last

=begin

shuffleメソッド
[1,2,3,4].shuffle #=> [2, 1, 3, 4]
[1,2,3,4].shuffle #=> [1, 3, 2, 4]

=end
