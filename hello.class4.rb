
class HelloWorld
  attr_accessor :name

  def initialize(myname = "Ruby")
    @name = myname
  end

  def greet
    puts "Hi, I am #{self.name}"
  end
end

ruby = HelloWorld.new
bob = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")


ruby.greet

p ruby.greet


=begin

メソッドのレシーバ（メソッドの受け取り手であるオブジェクトやインスタンス）自身を
参照するにはselfという変数を使います。

=end
