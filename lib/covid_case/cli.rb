class CovidCase::CLI

    #BASE_PATH = "https://www.nytimes.com/interactive/2021/us/covid-cases.html"

    def call
        puts "Welcome to the Covid-Case CLI"
        puts "Please make a selection"
        get_states
        list_states
        get_user_state
        show_state_details
        #get_state_info
        #binding.pry
        #get_case(state)
    end

    def get_states
        @place = CovidCase::States.all
    end

    def list_states
        @place.each.with_index(1) do |state, index|
            puts "#{index}.#{state.name}"
        end
    end

    def get_user_state
        input = gets.strip.to_i
        get_state_details(input)
    end

    def valid_input(input)
        @index = input.to_i
        @index <= @place.count && @index > 0
    end

    def get_state_details(input)
        data = @place[input-1]
        CovidCase::Covid_info.new(data)
        @details = CovidCase::Covid_info.all
        #binding.pry
        #@place[index] = CovidCase::States.stat
    end

    def show_state_details
        @details.each do |info|
            puts "#{info}"
            binding.pry
        end
    end
end