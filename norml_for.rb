=begin

一般的なif構文

for 変数 in オブジェクト do
 繰り返したい処理
end

=end


names = ["awk", "Peal", "Paython", "Ruby"]
for name in names
  puts name
end

=begin
namesという配列オブジェクトを生成.
各要素として"awk", "Peal", "Paython", "Ruby"という文字列を格納しています。
変数nameに対して、names(配列)オブジェクトの中の要素を一つずつ代入し、
繰り返したい処理を実行する。

つまり、配列の中から要素を一つずつ取り出して、それぞれを表示する
という処理を繰り返しています。
=end
