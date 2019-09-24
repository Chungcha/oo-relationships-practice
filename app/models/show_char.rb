class Show_char

    attr_reader :show, :char

    @@all = []

    def initialize (show, char)
        @show = show
        @char = char
        @@all << self
    end

    def self.all
        @@all
    end

end