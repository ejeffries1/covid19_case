class CovidCase::CLI

    #BASE_PATH = "https://www.nytimes.com/interactive/2021/us/covid-cases.html"

    def call
        puts "Welcome to the Covid-Case CLI"
        puts "Please make a selection"
        get_state
        list_states
        #get_case(state)
    end

    def get_state
        @place = CovidCase::States.all
    end

    def list_states
        @place.each.with_index(1) do |state, index|
            puts "#{index}. #{state}"
        end
    end

    def make_state
        students_array = CovidCase::Scraper.main_page(BASE_PATH)
    end

end