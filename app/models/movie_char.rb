class Movie_char
    
    attr_reader :movie, :char

    @@all = []

    def initialize(movie,char)
        @movie = movie
        @char = char
        @@all << self
    end

    def self.all
        @@all
    end

end