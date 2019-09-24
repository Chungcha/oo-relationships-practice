class Buyer
   @@all = []
# array of all buyers
   attr_reader :name
   def initialize(name)
       @name = name
       @@all << self
   end
   def self.all
       @@all
   end
   def cart
       Item.all.select do |item|
           item.buyer == self
       end
   end
   def total_cart
     var =  self.cart.map {|x| x.price }
   var.sum
      end
   def has_item?(item_string)
       self.cart.select do |item|
           item.name == item_string
       end
       #return the item instance
   end
   def has_item_price(num)
       self.cart.select do |item|
           item.price > num
       end
   end
   # def
   # end
end