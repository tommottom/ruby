class Car
  def initialize(name, color)
    @name = name
    @color = color
  end

  def name
    @name
  end

  def color
    @color
  end
end

my_car = Car.new("プリウス", "白")
puts my_car.name.color
puts my_car.color



=begin
class Car
  def initialize(name, color)
    @name = name
    @color = color
  end

  def name
    @name
  end

  def color
    @color
  end
end

my_car = Car.new("プリウス", "白")
puts my_car.name.color



my_car.name.color

は

my_car のインスタンスメソッド nameを実行した結果に対して、colorメソッドを実行した結果

を表すコードになっており、my_car のインスタンスメソッド nameの実行結果は、
"プリウス"という文字列なので、"プリウス"という文字列に colorメソッドを実行
しようとして、質問にあるように

"プリウス"という文字列には color というメソッドはありません。

というエラーメッセージが表示されます。
=end
