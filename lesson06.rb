

number_list = [2, 13, 9, 3, 1, 35, 6, 11]
number_list.each do | number |
  # 変更許可範囲-ここから
  if number >= 20
    break
  elsif number >= 10
    next
  end
  # 変更許可範囲-ここまで
  puts(number)
end
