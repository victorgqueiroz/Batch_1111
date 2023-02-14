class Chef
  attr_accessor :name
  def initialize(name, restaurant)
    @name = name             # => String
    @restaurant = restaurant # => Irá receber a Class Restaurant
  end

end
