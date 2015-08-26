# -*- coding: utf-8 -*-
# タイピング
require "readline"

qa = [
  "take a risk.",
  "easier said than done.",
  "more haste, less speed.",
  "there is always something better.",
  "good morning.",
]
score = 0
puts "問題は#{ qa.length }問です。"

qa.shuffle!
start_time = Time.now
qa.each_with_index do |text, i|
  puts "第#{i+1}問"
  puts text
  loop do
    t = Readline.readline('入力: ')
    if text == t
      puts "正解"
      score += 10
      break
    else
      puts "入力ミス！！"
      score -= 10
    end
  end
end
end_time = Time.now

time = end_time - start_time
puts "時間: #{time} sec"
puts "得点は#{score}点でした"
puts "returnまたはenterキーで終了します。"
gets
