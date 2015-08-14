require "date"

days = Date.today - Date.new(1993, 2, 24)
puts(days.to_i)


=begin

dateライブラリを読み込むことで、今日の日付を求めるDate.todayメソッドや
特定の日付のオブジェクトを生成するDate.newメソッドなどを利用できます。

Rubyの誕生日である1993年2月24日から今日までの日数を求めるプログラム
は上記のになります。


=end
