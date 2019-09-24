class Seller
   @@all = []
# array of all sellers
   attr_reader :name
   def initialize(name)
       @name = name
       @@all << self
   end
   def self.all
       @@all
   end
   def total_items_selling
       Item.all.select do |item|
           item.seller == self
       end
   end
end