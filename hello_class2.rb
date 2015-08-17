class HelloWorld
  def initialize(myname = "Ruby")
    @name = myname
  end

  def hello
    puts "Hello, world. I am #{@name}"
  end

  def name
    @name
  end

  def name=(value)
    @name = value
  end
end

ruby = HelloWorld.new
bob = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")

#1番目のnameメソッドを実行しています。
p ruby.name
#2番目のname(value)メソッドを実行しています。（アクセスメソッドです）
p ruby.name = "Robert"

=begin
アクセスメソッド
Rubyでは、オブジェクトの外部からインスタンス変数を直接参照(値の変更や操作)したり、
インスタンス変数に代入したりできません。

ではアクセスメソッドで@nameをよびだしたり、値の変更を行いましょう。
1、HelloWorldクラスにインスタンス変数"@name"を返すメソッドを定義する。
そしてそのメソッドを用いて@nameを呼び出し、HelloWorldクラスの@nameにアクセスする。


2、name=(value)メソッドをHelloWorldクラスに定義し、そのメソッドに対して引数を指定し、
その引数に対して好きな文字列を代入することでインスタンス変数に参照(値の変更や操作)をおこなう。

2番目のnameメソッドは"name="という名前を持っています。

つまり
def name(value)
  @name = value
end

nameメソッドの引数には変数(value)が代入されています。
そして.@name = valueの形式でインスタンス変数@nameに対して変数"value"を代入しています。
この時、変数valueに対して、好きな文字列を代入することで、インスタンス変数である@nameに
その文字列を代入することができます。

ではname(value)メソッドをよびだしてみましょう

ruby.name = "Robert"

こうすることで、インスタンス変数に外部からアクセスできるようになります。
=end
