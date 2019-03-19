class VentureCapitalist

    attr_accessor :name, :net_worth

    @@all = []
    def initialize(name, net_worth)
        @name = name
        @net_worth = net_worth
        @@all <<self
    end
    def self.all
        @@all
    end
    def self.tres_commas_club
        @@all.select {|ventureCapitalist| ventureCapitalist.net_worth > 1000000000}
    end
    def offer_contract(startup, type, investment)
        FundingRound.new(startup, self, type, investment)
    end
    def funding_rounds 
        FundingRound.all.select {|funding_rounds| funding_rounds.venture_capitalist == self}
    end
    def portfolio
        self.funding_rounds.map {|round| round.startup} 
    end
    def biggest_investment
        funding_rounds.max_by{|funding_rounds| funding_rounds.investment}
    end
    def invested(domain)
        # funding_rounds.select {|i| i.startup.domain == domain}.map(&:investment).sum
        portfolio.select {|i| i.domain == domain}.map(&:total_funds).sum
    #   total_domain_investments = 0
    #     self.portfolio.each { |startup| if startup.domain == domain
    #                                         total_domain_investments += startup.total_funds
    #                                     end
    #                          }
    #     total_domain_investments
    end
   

end
