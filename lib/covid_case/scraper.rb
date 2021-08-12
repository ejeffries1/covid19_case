class CovidCase::Scraper
    def self.main_page
        doc = Nokogiri::HTML(open("https://coronavirus.jhu.edu/region"))
        doc.css(".RegionMenu_items__3D_d2").each do |state|
            state
            binding.pry
        end
    end
end