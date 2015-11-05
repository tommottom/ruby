class String
  def love_ruby
    self + ' I love Ruby!'
  end
end

p 'My name is tomoki.'.love_ruby
#オープンクラスを使って、Stringクラスをそれ自体を改変している。
#Stringクラスを改変していることによってあらゆる文字列がlove_rubyメソッド
#を利用できる。
p 'Anyone Said.'.love_ruby.upcase



class A #Aクラスを定義
  def amane
    "she said"
  end
end

class A #Aクラスを再オープン
  def suzuha
    "about a steins gate"
  end
end

okarin = A.new
p okarin.amane
p okarin.suzuha

=begin
オープンクラスとは

クラスの定義をどこからでも書き換えられる特徴のこと
つまり、簡単に今あるクラスにメソッドを追加できてしまう

既存クラスを好きな場所でオープンし、メソッドの修正、追加などの
任意の変更を加えられる機能のこと。

モンキーパッチ

オープンクラスにより、既存メソッドを置き換えること
=end
