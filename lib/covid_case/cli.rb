class CovidCase::CLI

    BASE_PATH = "https://www.nytimes.com/interactive/2021/us/covid-cases.html"

    puts "Welcome to the Covid-Case CLI"
    puts "Please make a selection"

    def run
        make_state
    end

    def make_state
        students_array = Scraper.main_page(BASE_PATH)
    end

end