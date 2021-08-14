class CovidCase::Scraper
    def self.main_page
        doc = Nokogiri::HTML(open("https://www.nytimes.com/interactive/2021/us/covid-cases.html"))
        doc.css(".children a").collect do |state|
            name = state.text
        end
    end

    def self.state_page
        doc = Nokogiri::HTML(open("https://www.nytimes.com/interactive/2021/us/louisiana-covid-cases.html"))
        doc.css(".parent td").collect do |element|
            death = element.css(".OverviewBlock_statValue__1bVFH")
            #cases
            #tested
            #vaccinated
            binding.pry
        end
    end
end