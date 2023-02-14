require_relative "fastfood_restaurant"
require_relative "gastronomic_restaurant"

burguer_king = FastFoodRestaurant.new( "Burger King", "São Paulo", 150, "burguer", 5)

puts "#{burguer_king.name} is now #{burguer_king.open? ? "open" : "closed"}"
puts burguer_king.name
burguer_king.book("Victor")
burguer_king.book("Thais")
burguer_king.print_clients
puts "##" * 10

tuju = GastronimicRestaurant.new("Tuju", "São Paulo", 60, "high cuisine", 2)
puts "##" * 10
puts "#{tuju.name} is now #{tuju.open? ? "open" : "closed"}"
tuju.book("Raquel")

puts tuju.name
tuju.print_clients
puts "##" * 10
