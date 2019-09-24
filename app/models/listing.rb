require "pry"

class Listing

    attr_reader :city

    @@all = []


    def initialize(city)
        @city = city
        @@all << self
    end 


    # def initialize(city, trip) #doesn't take in a trip BECAUSE??
    #     @city = city
    #     @trip = trip
    #     @@all << self
    # end 

    def self.all
        @@all
    end

    def guests #better way to do this?
        guests = []
        Trip.all.each do |trip|
            guests << trip.guest if trip.listing == self
        end
        guests
    end

    def trips
        Trip.all.select{|trip|trip.listing == self}
    end

    def trip_count
        self.trips.count
    end

    def self.find_all_by_city(city)
        self.all.select{|listing|listing.city==city}
    end

    def self.most_popular
        num_max = 0
        listing_max = nil
        self.all.each do |listing|
            if listing.trip_count > num_max
                num_max = listing.trip_count
                listing_max = listing
            end
        end
        listing_max
        #iterate through all listings
        #plug in each value with trip count
        #keep reassigning most trips variable
        # return the listing with most trips
    end
end