class Character
    
    attr_reader :actor, :char_name
    
    @@all = []

    def initialize (actor, char_name)
        @actor = actor
        @char_name = char_name
        @@all << self
    end

    def self.all
        @@all
    end

    def shows_w_char
        Show_char.all.select{|show_char|show_char.char == self}
    end

    def movies_w_char
        Movie_char.all.select{|movie_char|movie_char.char == self}
    end

    def self.most_appearance
        max_appearances = 0
        max_character = nil
        self.all.each do |characters| total = (characters.shows_w_char + characters.movies_w_char).length
            if total > max_appearances
                total = max_appearances
                max_character = characters
            end
        end
        max_character
    end
end