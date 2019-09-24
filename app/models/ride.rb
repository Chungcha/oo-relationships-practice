class Ride #join model that builds a relationship 
    #with passengers and drivers

    attr_reader :passenger, :driver, :distance

    @@all = []

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
        #distance is a float
        #integer changes to a float when added with another float
        @@all << self
    end 

    def self.all
        @@all #is this ever go in as self.all??
    end

    def self.average_distance
        # total_distance = 0
        # self.all.each do |trip|
        #     total_distance += trip.distance
        # end
        # (total_distance/self.all.count).round(2)

        # total = self.all.map{|ride| ride.distance} .sum
        # total / self.all.length

        self.all.reduce(0){|sum,ride|sum + ride.distance}/self.all.length
    end
end