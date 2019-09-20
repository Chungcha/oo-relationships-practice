class Bakery
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end



    #THIS IS RIGHT##
    def ingredients
       ingredients_array = []
        # Ingredients.all.select do |ingredient|
        #     ingredient.bakery = self
        # end 
        self.desserts.each do |dessert|
            ingredients_array << dessert.all_ingredients
            
        end
        
        ingredients_array

        #return an array of ingredients.
    end

    def desserts
        Dessert.all.select do |desserts|
            desserts.bakery == self
        end 
    end

    def average_calories
        total_calories = 0
        self.desserts.each {|food|total_calories+=food.calories}
        total_desserts_made = self.desserts.length
        total_calories
        average_cals = total_calories/total_desserts_made
        average_cals
    end

    def self.all
        @@all
    end

    # def shopping_list
    #     self.ingredients.each do |ingredient|
    #         ingredient.each do |ingredient|
    #             puts ingredient.name
    #         end
    #     end
    # end
end



