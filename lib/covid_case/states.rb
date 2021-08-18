class CovidCase::States
    attr_accessor :name, :state

    @@all = []
    def initialize(name)
        @name = name
        #@state = states_info[:state_url]
        save
        binding.pry
    end
    
    def self.all
        CovidCase::Scraper.scrape_main_page if @@all.empty?
        @@all
        binding.pry
    end

    def save
        @@all << self
    end
end