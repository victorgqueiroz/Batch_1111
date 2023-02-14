require_relative 'chef'
require_relative 'restaurant'

vintao = Restaurant.new("Vintão", "São Paulo", 60, "Brasileiro", 'Paola Carosella')

puts "#{vintao.name}'s chef is #{vintao.chef.name}"
