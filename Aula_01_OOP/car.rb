class Car
  def initialize(color)
    @color = color
    @engine_started = false
end

def start
  puts "Starting the car..."
  @engine_started = true
end

def engine_started?
  return @engine_started
end

attr_reader :color
attr_writer :color
end

red_car = Car.new("red")

puts "Is my car started?"
puts red_car.engine_started? ? "Yes" : "No"

red_car.start

puts "Is my car started?"
puts red_car.engine_started? ? "Yes" : "No"

puts "the color of my car is #{red_car.color}"

puts "Insert the new"
new_color = gets.chomp
red_car.color = new_color

puts "the new car color is #{red_car.color}"
