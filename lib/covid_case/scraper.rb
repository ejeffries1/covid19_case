class CovidCase::Scraper
    def self.main_page
        doc = Nokogiri::HTML(open("https://coronavirus.jhu.edu/region"))
        doc.css(".RegionMenu_items__3D_d2 a").collect do |state|
            name = state.css("span")
        end
    end

    def self.state_page
        doc = Nokogiri::HTML(open("https://coronavirus.jhu.edu/region/us/alabama"))
        doc.css(".RegionOverview_mainSections__3DQD7").collect do |element|
            death = element.css(".OverviewBlock_statValue__1bVFH")
            #cases
            #tested
            #vaccinated
            binding.pry
        end
    end
end