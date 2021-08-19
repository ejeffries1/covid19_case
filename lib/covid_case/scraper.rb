class CovidCase::Scraper
    attr_accessor :states_info

    page = "https://www.nytimes.com/interactive/2021/us/covid-cases.html"

    def self.scrape_month(page)
        @states_info = {}
        doc = Nokogiri::HTML(open(page))
        states = doc.css("tbody.children tr .name")
        states.each do |state|
            @states_info << 
                states_info[:state_name] = state.text.gsub(/[\W]/, "")
                states_info[:state_url] = state.css("a").attribute("href").value
                    #table.g-table.super-table.withchildren
                    binding.pry
        end
        @states_info
    end

    def self.scrape_state_page

        #doc = Nokogiri::HTML(open(state_page))
        @states_info
        binding.pry
        #covid_hash = {}
        #doc.css(".covid-tracker").each do |element|
            #covid_hash[:death] = element.css(".num.deaths.svelte-6tbkhx")[2].text
            #covid_hash[:cases] = element.css(".num.cases.svelte-6tbkhx")[2].text
            #covid_hash[:vaccinated] = element.css(".num.vax.td-end")[0].text
            #binding.pry
        #end
        #covid_hash
    end
end