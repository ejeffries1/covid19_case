class CovidCase::Scraper
    attr_accessor :state_url

    def self.scrape_main_page
        states_info = {}
        doc = Nokogiri::HTML(open("https://www.nytimes.com/interactive/2021/us/covid-cases.html"))
        states = doc.css("tbody.children tr .name")
        states.each do |state|
            #states_info << 
                states_info[:state_name] = state.text.gsub(/[\W]/, "")
                states_info[:state_url] = state.css("a").attribute("href").value
                    #table.g-table.super-table.withchildren
        end
        @states_info
    end

    def self.scrape_state_page
        @states_info
        state_url = self.states_info[:state_url]
        #doc = Nokogiri::HTML(open(state_url))
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