max = 1000

#2~maxまでの配列をつくる
# ans_array = (2..max).to_aの方法でもOK
ans_array = [*2..1000]

# maxの平方根までループする
2.upto(Math.sqrt(max)) do |num|
    # 素数の倍数を削除する
    ans_array.reject! { |elem| (elem % num == 0) && (elem > num) }
end

p ans_array
