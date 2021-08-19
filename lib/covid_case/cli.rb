class CovidCase::CLI

    #BASE_PATH = "https://www.nytimes.com/interactive/2021/us/covid-cases.html"

    def call
        puts "Welcome to the Covid-Case CLI"
        puts "Please make a selection"
        get_states
        list_states
        get_user_state
        #get_state_info
        #binding.pry
        #get_case(state)
    end

    def get_states
        @place = CovidCase::States.all
    end

    def list_states
        @place.each.with_index(1) do |state, index|
            puts "#{index}. #{state.name}"
        end
    end

    def get_user_state
        input = gets.strip
        index = input.to_i
        if valid_input(index) == false
            puts "Please make a selection within range"
            get_user_state
        else
            show_state_details(index)
        end
    end

    def valid_input(index)
        if index == 0 || index > @place.count
            false
        else
            true
        end
    end

    def show_state_details(input)

    end
end