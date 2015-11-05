

#文の中から最も長い単語を返すプログラム

sentence = "hippopotamus Freegan seitan ennui swag chia, cronut flexitarian crucifix migas
Kickstarter cold-pressed roof party. Organic cred cliche stumptown,
cronut yr vinyl squid lomo. Helvetica meh PBR, pour-over Pitchfork hoodie cardigan mixtape umami."


def longest_word(sentence)
  sentence.split.max_by{|word| word.length}
end

p longest_word(sentence)


#Ruby:String#split

#splitメソッド 区切り文字として文字列を分割し、配列を返す。
#引数に代入した文字列を配列にしてそのまま返す
#s = "hello world ruby"
#p s.split #=> ["hello,", "world,", "ruby"]

#Ruby:Enumerable#max_by

#max_byメソッド ブロックの戻り値が最大値となる要素を返します
#ブロック引数itemに要素をいれながらブロックを繰り返し実行し、
#ブロックの戻り値を集める。

#animals =  ["mouse", "cat", "hippopotamus", "giraffe"]
#p animals.max_by { |item| item.size} # or length
