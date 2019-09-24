class User

    attr_reader :name

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.highest_pledge
        # Pledge.all.select{|pledge|pledge.amount.max}
        Pledge.all.max_by do |pledge| pledge.amount 
            #max by finds the max value in an array
        end
    end

    def self.pledge_hash
        pledge_hash = {}
        pledge_total = 0
        Pledge.all.each do |pledge|
            if pledge_hash[pledge.user]
                pledge_hash[pledge.user] += pledge.amount
            else
                pledge_hash[pledge.user] = pledge.amount
            end
        end
        pledge_hash
    end

    def self.multi_pledger
        pledge_hash = {}
        Pledge.all.each do |pledge|
            if pledge_hash[pledge.user]
                pledge_hash[pledge.user] += 1
            else
                pledge_hash[pledge.user] = 1
            end
        end
        pledge_hash
    end

    def self.project_creater
        Project.all.map{|project|project.user}
    end

    def self.project_hash
        pledge_hash = {}
        Pledge.all.each do |pledge|
            if pledge_hash[pledge.user]
                pledge_hash[pledge.user] << pledge.project
            else
                pledge_hash[pledge.user] = []
                pledge_hash[pledge.user] << pledge.project
            end
        end
        pledge_hash
    end

end