class Project

    attr_reader :name, :user
    
    @@all = []

    def initialize (name, user)
        @name = name
        @user = user
        @@all << self
    end

    def self.all
        @@all
    end

    def self.no_pledges
        self.all-Pledge.all.map{|pledge|pledge.project}.uniq 
        #subtracting the projects with an array of all the pledges
        #all individual/uniq
    end

    # def self.above_goal

    # end

    def backers
        Pledge.all.select{|pledge|pledge.project == self}
    end

    def self.most_backers
        most_backed_num = 0
        most_backed = nil
        self.all.each do |project|
            if project.backers.length > most_backed_num
                most_backed_num = project.backers.length
                most_backed = project
            end
        end
        most_backed
    end
end