class Actor
    
    attr_accessor :name

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_characters
        Character.all.each do |character|
          
        end
    end

end