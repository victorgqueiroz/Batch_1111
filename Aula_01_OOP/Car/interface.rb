require_relative '../car'

puts "Insert the color"
new_color = gets.chomp
new_car.color = new_color
puts "the color of my car is #{new_car.color}"

puts "Now what's the brand?"
new_brand = gets.chomp
new_car.brand = new_brand
puts "The brand is #{new_car.brand}"

puts "Let's start the car? Yes or No?"
start_car = gets.chomp
new_car.start = start_car

case start_car
when "Yes"
  puts "Oook let's gooo"
when "No"
  puts "Whyyy let's turn on this monster baby"
else
  puts "Choose one option"
end

puts "Is my car started?"
puts new_car.engine_started? ? "Yes" : "No"

puts "Do you want stop the car? Yes or No"
stop_car = gets.chomp
new_car.stop = stop_car

case stop_car
when "Yes"
  puts "Let's turn on again"
when "No"
  puts "Your car is on FIRE!!"
else
  puts "Choose one option"
end
