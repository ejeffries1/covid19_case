class CovidCase::Covid_info
    attr_accessor :state, :death, :cases, :vaccinated
   
    @@all = []
    def initialize(state) #death, cases, vaccinated)
        @state = state
        #@death = death
       # @cases = cases
        #@vaccinated = vaccinated
        save
    end

    def self.all
        CovidCase::Scraper.scrape_state_page(self) if @@all.empty?
        @@all
    end

    def add_to_state
        @state.stats << self unless @state.stats.include?(self)
    end

    def save
        @@all << self
    end
end