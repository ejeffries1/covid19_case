class CovidCase::Scraper
    def self.main_page
        doc = Nokogiri::HTML(open("https://coronavirus.jhu.edu/region"))
        doc.css(".RegionMenu_items__3D_d2 a").collect do |state|
            name = state.css("span")
        end
    end

    def self.state_page
        doc = Nokogiri::HTML(open("https://coronavirus.jhu.edu/region/us/alaska"))
        doc.css(".RegionOverview_mainSections__3DQD7 RegionOverview_noBorder__1yP6L").collect do |attr|
            {
                :deaths =>
                :cases =>
                :tested =>
                :vaccinated =>
            }
            binding.pry
        end
    end
end