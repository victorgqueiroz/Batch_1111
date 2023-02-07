require_relative "interface"

class Car
  attr_reader :color, :brand
  attr_writer :color, :brand

  def initialize(color, brand)
    @color = color
    @engine_started = false
    @brand = brand
  end

  def start
    # puts "Starting the car..."
    power_batteries
    access_fuel
    crank_engine
    turn_on_radio
    @engine_started = true
  end

  # private #tudo abaixo disso não fica visivel para o usuário.

  def power_batteries
    puts "Powering baterries"
  end

  def access_fuel
    puts "Accessing fuel"
  end

  def crank_engine
    puts "Cranking engine - THE MONSTER IS ONNN BABY"
  end

  def turn_on_radio
    puts "Playing MOTORHEADDDDD"
  end

  def engine_started?
    return @engine_started
  end

  def stop
    @engine_started = false
  end

end


puts "Insert the color and the brand"
new_color = gets.chomp
new_car = Car.new(new_color, new_brand)
new_car.color = new_color
puts "Your new car is color #{new}"

puts "--" * 20

# puts "Now what's the brand?"
# new_brand = gets.chomp
# new_car.brand = new_brand
# puts "The brand is #{new_car.brand}"

# puts "--" * 20

puts "Let's start the car? Yes or No?"
start_car = gets.chomp

if start_car == "Yes"
  new_car.start
  puts "Oook let's gooo"
else
  new_car.stop
  puts "Whyyy let's turn on this monster baby"
end

# case start_car
# when "Yes" = new_car.start
#   puts "Oook let's gooo"
# when "No" = new_car.stop
#   puts "Whyyy let's turn on this monster baby"
# else
#   puts "Choose one option"
# end
puts "--" * 20
puts "Is my car started?"
puts new_car.engine_started? ? "Yes" : "No"

# new_car.start

# puts "Is my car started?"
# puts new_car.engine_started? ? "Yes" : "No"

# puts "the new car color is #{new_car.color}"

puts "Do you want stop the car? Yes or No"
stop_car = gets.chomp

if stop_car == "Yes"
  new_car.stop
  puts "Let's turn on again"
else
  new_car.start
  puts "Your car is on FIRE!!"
end

# case stop_car
# when "Yes"
#   puts "Let's turn on again"
# when "No"
#   puts "Your car is on FIRE!!"
# else
#   puts "Choose one option"
# end
