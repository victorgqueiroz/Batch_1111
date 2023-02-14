require_relative "restaurant"

vintao = Restaurant.new("Vintão", "São Paulo", 60, "Brasileiro")
puts "#{vintao.name} is in #{vintao.city}"
puts "It can host #{vintao.capacity} peaple"

puts "Construction happening...."
vintao.capacity += 10
puts "It can host #{vintao.capacity} peaple"

puts "#{vintao.name} is now #{vintao.open? ? "open" : "closed"}"

p vintao
puts "Insert client name"
client_name = gets.chomp
vintao.book(client_name)
p vintao
