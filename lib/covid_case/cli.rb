class CovidCase::CLI

    BASE_PATH = "https://www.nytimes.com/interactive/2021/us/covid-cases.html"

    def call
        puts "Welcome to the Covid-Case CLI"
        puts "Please make a selection"
        #get_state
        #get_case(state)
    end

    def get_state
        
    end

    def make_state
        students_array = CovidCase::Scraper.main_page(BASE_PATH)
    end

end