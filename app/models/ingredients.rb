class Ingredients
    attr_reader :name, :dessert, :calorie
    
    @@all = []

    def initialize(name, dessert, calorie)
        @name = name
        @dessert = dessert
        @calorie = calorie
        @@all << self
    end

    def self.all
        @@all
    end

    def bakery
        self.dessert.bakery
    end

    def self.find_all_by_name(ingredient)
        #searching all the ingredients
        self.all.select do |ingredientss|
            ingredientss.name.include?(ingredient)
        end
    end
 
    #every time an ingredient is added it needs a calorie count
end