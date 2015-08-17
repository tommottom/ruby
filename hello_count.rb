class HelloCount
  @@count = 0

  def HelloCount.count
    @@count
  end

  def initialize(myname = "Ruby")
    @name = myname
  end

  def hello
    @@count += 1
    puts "Hello, world. I am #{@name}.\n"
  end
end

bob = HelloCount.new("Bob")

p HelloCount.count
bob.hello
p HelloCount.count
