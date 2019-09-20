require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
sara_lee = Bakery.new("Sara_Lee")
ice_cream = Dessert.new("Ice Cream",sara_lee)
ice = Ingredients.new("Ice", ice_cream, 10)
cream = Ingredients.new("Whipped Cream", ice_cream, 50)
binding.pry
0