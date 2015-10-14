
class HelloWorld
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

ruby.hello
bob.hello
alice.hello



=begin

「initializeメソッドの機能
1,newメソッドによってオブジェクト(インスタンス)が生成された時にこのメソッドが呼ばれます。」

2,initializeメソッドには引数mynameに初期値 "Ruby"が指定されているので、
-mynameに"Ruby"が代入される
-インスタンス変数""@name"にmynameが代入される
という処理が行われています。

3,ruby = HelloWorld.newによってHelloWorldクラスのインスタンス "ruby"が生成された時に
initializeメソッドが呼び出されます。

この時、newメソッドに引数を渡していないので、"@name"には"Ruby"が渡されます
また、オブジェクトにとって必要な初期化の処理はここに記述します。

4,"HelloWorld"クラス(スーパークラス)のサブクラスであるためインスタンス"ruby"は
"HelloWorld"クラスのメソッドを扱えます。

なので、インスタンス"ruby"でhelooメソッドを使ったみましょう

ruby.hello

結果

Hello, world. I am Rubyと表示されます。

このとき
"@name"にはinitializeメソッドで引数として与えられている"Ruby"が代入されているので
Hello, world. I am Rubyと表示されるわけです。


ではinitializeメソッドの引数"myname"にほかの値を代入するにはどうしたらいいのでしょうか？？


それはinitializeメソッドの機能を利用します

initializeメソッドは
newメソッドによってインスタンスを生成することでinitializeメソッド自身が呼ばれる機能を
持っています。
その時、newメソッドに渡した引数がそのままinitializeメソッドに渡されるのです、


例を出しましょう

def initialize(myname = "Ruby")
  @name = myname
end

この時、initializeメソッドには"Ruby"が代入されています

それではbob = HelloWorld.new("Bob")と記述してみましょう

initializeメソッドの機能によってnewメソッドがインスタンスを生成するとinitializeメソッド
も呼び出されます、その時、initializeメソッドに対して"newメソッド"に渡した引数がそのまま
渡されます

つまり

def initialize(myname = "Bob")
  @name = myname
end

となるわけです。

=end
