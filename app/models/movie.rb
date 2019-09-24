class Movie
    
    attr_reader :movie_name

    @@all = []

    def initialize (movie_name)
        @movie_name = movie_name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def actors_in_movie
        Movie_char.all.select{|movie_char|movie_char.movie==self}
    end

    def self.most_actors
        most_actors = nil
        num_actors = 0
        self.all.each do |movies|
            most_actors = movies if movies.actors_in_movie.length > num_actors
        end
        most_actors
        #sort arrays of actors in movie

        #return movie with longest array
    end

end