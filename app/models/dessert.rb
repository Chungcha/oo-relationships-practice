class Dessert
    attr_reader :name, :bakery
    
    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def all_ingredients
        Ingredients.all.select do |ingredient|
            ingredient.dessert == self
        end  
    end
    
    def calories
        calories = []
        self.all_ingredients.select {|ingredient|calories << ingredient.calorie}
        calories.sum
    # iterate through incredients included in the dessert
    # select calories
    # return the sum of the clories
    end

end


