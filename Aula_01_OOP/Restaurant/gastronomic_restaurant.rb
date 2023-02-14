require_relative "restaurant"

class GastronimicRestaurant < Restaurant
  def initialize(name, city, capacity, category, michelin_stars)
    super(name, city, capacity, category)
    @michelin_stars = michelin_stars
  end

  def print_clients
    puts "You dont have acces to the list"
  end
end
