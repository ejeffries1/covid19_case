class CovidCase::Scraper
    def self.main_page
        doc = Nokogiri::HTML(open(main))
        doc.css(".children a").collect do |state|
            states << {
                :name => state.text
            }
        end
        states
    end

    def self.state_page
        doc = Nokogiri::HTML(open("https://www.nytimes.com/interactive/2021/us/louisiana-covid-cases.html"))
        covid_hash = {}
        doc.css(".covid-tracker").each do |element|
            covid_hash[:death] = element.css(".num.deaths.svelte-6tbkhx")[2].text
            covid_hash[:cases] = element.css(".num.cases.svelte-6tbkhx")[2].text
            covid_hash[:vaccinated] = element.css(".num.vax.td-end")[0].text
            #binding.pry
        end
        covid_hash
    end
end