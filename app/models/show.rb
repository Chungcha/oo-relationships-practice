class Show

    attr_reader :name
    attr_accessor :character


    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def on_the_big_screen
        Movie.all.select{|movie|movie.movie_name == self.name}
    end

end