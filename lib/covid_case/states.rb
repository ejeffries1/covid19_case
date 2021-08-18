class CovidCase::States
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        #binding.pry
    end

    #def self.all
    #CovidCase::Scraper.scrape_main_page
    #binding.pry
    #end
end