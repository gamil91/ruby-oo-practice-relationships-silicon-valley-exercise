class Startup


    @@all = []
    def self.all
        @@all
    end

    def self.find_by_founder(founder)
        self.all.find {|s| s.founder == founder}
    end

    def self.domains
        self.all.map {|s| s.domain}
    end

    attr_accessor :name, :domain
    attr_reader :founder

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def pivot(name, domain)
        self.name = name
        self.domain = domain
    end

    def sign_contract(venture_capitalist, type, investment)
        FundingRound.new(self, venture_capitalist, type, investment)
    end

    def num_funding_rounds
        funding_rounds.size
    end

    def funding_rounds
        FundingRound.all.select {|fr| fr.startup == self}
    end

    def total_funds
        funding_rounds.map {|fr| fr.investment}.sum
    end

    def investors
        funding_rounds.map {|fr| fr.venture_capitalist}.uniq
    end

    def big_investors
        investors.select do |investor|
            VentureCapitalist.tres_commas_club.include?(investor)
        end
    end




end
