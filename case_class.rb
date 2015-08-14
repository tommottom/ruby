

array = ["a", 1, nil ]
array.each do |item|
  case item
  when String
    puts "items is a String"
  when Numeric
    puts "items is a Numeric"
  else
    puts "items is something"
  end
end


=begin
arrayという文字列、数値、nilの配列オブジェクトを生成

arrayという配列から要素を一つずつ取りだし、変数|item|に代入し、
ブロック(do end)の中のメソッドを繰り返し実行していく。

case文はitemオブジェクトをwhenの値と比較し、真のときに条件文を処理していき、
case文の処理が終わるまで実行する。


今回にcase文は、比較したいオブジェクトが文字列オブジェクト(stringクラス)か数値オブジェクト
(numericクラス)か、あるいはどちらでもないかを判断して結果を表示します。
=end
