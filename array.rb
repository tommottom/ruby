array = [[1, 1], [3, 3], [4, 4], [7, 6], [11, 7], [6, 7], [8, 8], [9, 9], [7, 10], [10, 11], [13, 13], [14, 14]]



#arrayobjectに全ての要素を表示する
#puts array

puts array.index{|a,b| a != b}
