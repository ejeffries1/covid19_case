class CovidCase::Scraper
    attr_accessor

    def self.scrape_main_page
        students_info = []
        doc = Nokogiri::HTML(open("https://www.nytimes.com/interactive/2021/us/covid-cases.html"))
        doc.css("table.g-table.super-table.withchildren").each do |state|
            state_info << {
                :name => state.css("td.name").text,
                :state_url => state.css("tbody.children a").attribute("href").value
            }
        end
        @state_info
    end

    def self.scrape_state_page
        page = @state_info
        binding.pry
        doc = Nokogiri::HTML(open(page))
        covid_hash = {}
        doc.css(".covid-tracker").each do |element|
            covid_hash[:death] = element.css(".num.deaths.svelte-6tbkhx")[2].text
            covid_hash[:cases] = element.css(".num.cases.svelte-6tbkhx")[2].text
            covid_hash[:vaccinated] = element.css(".num.vax.td-end")[0].text
            
        end
        covid_hash
    end
end