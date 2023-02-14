require_relative 'chef'

class Restaurant
  attr_accessor :name, :city, :capacity, :category, :chef

  def initialize(name, city, capacity, category, chef_name)
    @name = name
    @city = city
    @capacity = capacity
    @category = category
    @chef = Chef.new(chef_name, self)
    @clients = []
  end

  def self.categories
    return ['burguer', 'high cuisine', 'french', 'italian']
  end

  def book(client_name)
    @clients << client_name
  end

  def open?
    return Time.now.hour >= 19 && Time.now.hour < 22
  end

  def closed?
    return !open?
  end

  def print_clients
    @clients.each do |client|
      puts "- #{client}"
    end
  end
end
