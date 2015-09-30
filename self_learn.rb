

class HelloWorld
  attr_accessor :name

  def greet
      puts "Hi, I am #{self.name}"
  end

  def test_name
    self.name = "ruby"
  end
end

hello = HelloWorld.new
hello.greet
