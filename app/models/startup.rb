class Startup
    attr_accessor :name
    attr_reader :founder, :domain


    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def self.all
        @@all
    end
    def pivot(domain, name)
        @domain = domain
        @name = name

    end

    def self.find_by_founder(name)
        @@all.find{|startup| startup.founder == name}
    end
    def self.domains
        Startup.all.map {|startup| startup.domain}
    end

    def sign_contract(venture_capitalist, type, investment)
        FundingRound.new(self, venture_capitalist, type, investment)
    end
    def fundings
        FundingRound.all.select {|fundings| fundings.startup == self} 
    end
    def num_funding_rounds
        fundings.count
    end
    def total_funds
        funds = fundings.map {|fundings| fundings.investment}
        funds.inject(0, :+)
    end
    def investors
        fundings.map {|fundings| fundings.venture_capitalist}.uniq
    end
    def big_investors
        fundings.map if venturecapiltalist.tres_commas_club
    end

end
