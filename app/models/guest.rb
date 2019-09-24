require "pry"

class Guest

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def listings
        #array of all listings guest has stayed at
        Trip.all.select do |trip|  
            trip.guest == self
        end
    end

    def trips
        Trip.all.select{|trip|trip.guest == self}
    end

    def trips_count
        self.trips.count
    end

    def self.all
        @@all
    end

    def self.find_all_by_name(name)
        self.all.select{|guest|guest.name == self.name}
    end

    def self.pro_traveller
        self.all.select{|guest|guest.trips_count > 1}
    end

    def self.find_all_by_name(name)
        self.all.select{|guest|guest.name == name}
    end

end