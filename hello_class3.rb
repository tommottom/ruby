
class HelloWorld
  attr_accessor :name

  def initialize(myname = "Ruby")
    @name = myname
  end

  def hello
    puts "Hello, world. I am #{@name}"
  end
end

ruby = HelloWorld.new
bob = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")

#1番目のnameメソッドを実行しています。
p ruby.name
#2番目のname(value)メソッドを実行しています。（アクセスメソッドです）
p ruby.name = "Robert"
