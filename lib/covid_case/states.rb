class CovidCase::States
    attr_accessor :name

    def initialize(states)
        @name = self.send("name=", states[:name])
        binding.pry
    end
end