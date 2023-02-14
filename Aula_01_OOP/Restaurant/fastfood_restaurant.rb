require_relative "restaurant"
class FastFoodRestaurant < Restaurant
  def initialize(name, city, capacity, category, prep_time)
    super(name, city, capacity, category)
    @prep_time = prep_time
  end


  def open?
    super ||
    Time.now.hour >= 10 && Time.now.hour < 15
  end

end
