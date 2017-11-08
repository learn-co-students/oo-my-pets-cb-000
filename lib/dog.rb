class Dog
  # code goes here
    attr_accessor :mood, :owner
    attr_reader :name
    def initialize(name, mood ="nervous")
      @name = name
      @mood = mood
    end

end
