class Driver

    attr_reader :name

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def passengers
        # passengers = []
        # Ride.all.each do |ride|
        #     passengers << ride.passenger if ride.driver == self
        # end
        # passengers
        self.rides.map{|ride|ride.passenger}
        #map is pulling the .passenger value out.
    end

    def rides
        Ride.all.select {|ride|ride.driver == self}
    end

    def self.all
        @@all
    end

    def driver_distance
        self.rides.reduce(0) do |sum, ride|
            sum + ride.distance
        end
    end    

    def self.mileage_cap(distance)
        # self.all.select{|driver|driver if driver.driver_distance > distance}
        self.all.select{|driver| driver.driver_distance > distance}
    end

end