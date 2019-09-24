class Item
    @@all = []
    attr_reader :name, :seller, :buyer, :price
    def initialize(name, seller, buyer, price)
        @name = name
        @seller = seller
        @buyer = buyer
        @drew = price
        @@all << self
    end
    # def
    # end
    def self.all
        @@all
    end
 end