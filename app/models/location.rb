class Location

    attr_reader :name

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def num_clients
        clients_num =0
        Loc_train.all.each do |loc_train|
            if loc_train.location == self
                clients_num += loc_train.trainer.num_clients
            end
        end
        clients_num 
    end

    def self.least_clients
        self.all.min_by{|location|location.num_clients}
        #min_by is the opposite of max_by
    end

end