class Cat
  attr_reader :name
  attr_accessor :mood
  # code goes here
  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end

end
