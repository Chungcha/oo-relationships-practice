class Passenger
    #passenger not initialized with ride?
    #issues when every new passenger is a new ride but old passenger
    #needs a new passenger for new rider when instanced.
    attr_reader :name

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def drivers
        # drivers = []
        # Ride.all.each do |ride|
        #     drivers << ride.driver if ride.passenger == self
        # end
        # drivers
        self.rides.map{|ride|ride.driver}
        #map creates a new array and pulls each data point for each element.
    end

    def rides
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    def self.all
        @@all
    end

    def total_distance
        #should calculate the total distance the passenger has 
        #travelled with the service

        # total_distance = 0
        # self.rides.each do |ride|
        #     total_distance += ride.distance
        # end
        # total_distance

        self.rides.reduce(0){|sum, ride| sum + ride.distance} 

    end

    def self.premium_members
        #should find all passengers who have travelled 
        #over 100 miles with the service
        premium_members = []
        self.all.each do |passenger|
            premium_members << passenger if passenger.total_distance > 100
        end
        premium_members

        self.all.select{|passenger|passenger.total_distance>100}
    end 

end