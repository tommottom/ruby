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

  def name_and_color
    [@name, @color]
  end
end

my_car = Car.new("プリウス", "白")
puts my_car.name
puts my_car.color
puts my_car.name_and_color
