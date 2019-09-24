class Trainer

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
        (Client.all.select{|client|client.trainer==self}).length
    end

    def self.most_clients
        self.all.max_by{|trainer|trainer.num_clients} 
        #max_by gives max value of given block.
    end

end