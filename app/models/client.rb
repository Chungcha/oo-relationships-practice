class Client

    attr_reader :name, :trainer

    @@all = []

    def initialize(name,trainer)
        @name = name
        @trainer = trainer
        @@all << self
    end

    def self.all
        @@all
    end

    def assign_trainer(trainer)
        @trainer = trainer
    end

end