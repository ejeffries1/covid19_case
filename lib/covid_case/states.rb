class CovidCase::States
    attr_accessor :name, :state

    @@all = []
    
    def initialize(name, state_url)
        @name = name
        @state_url = state_url
        save
    end

    def self.all
        CovidCase::Scraper.scrape_states if @@all.empty?
        @@all
    end

    def state_stat
        CovidCase::Scraper.scrape_state_page(self.state_url) if @@stats.empty?
        @@stats = []
    end

    def save
        @@all << self
    end
end