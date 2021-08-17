class CovidCase::Scraper
    attr_accessor 

    def self.scrape_main_page
        states_info = []
        doc = Nokogiri::HTML(open("https://www.nytimes.com/interactive/2021/us/covid-cases.html"))
        doc.css("tbody.children").each do |state|
            states_info << {
                :name => state.css("tr td.name").text
                :state_url => state.css("a").attribute("href").value
                    #table.g-table.super-table.withchildren
            }
            #binding.pry
        end
        states_info
    end

    def self.scrape_state_page(state_url)
        #doc = Nokogiri::HTML(open("https://www.nytimes.com/interactive/2021/us/covid-cases.html"))
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