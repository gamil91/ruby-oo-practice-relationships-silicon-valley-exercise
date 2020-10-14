class FundingRound

    @@all = []
    def self.all
        @@all
    end

    attr_reader :startup, :venture_capitalist
    attr_accessor :type, :investment

    def initialize(startup, venture_capitalist, type, investment)
        @startup = startup
        @venture_capitalist = venture_capitalist
        @type = type
        if investment < 0
            @investment = 0
        else
            @investment = investment
        end
        @@all << self
    end
    
   


end
