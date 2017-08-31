class Fish
  attr_accessor :mood
  attr_reader :name
  @@all = []

  def initialize(name, mood = 'nervous')
    @name = name
    @mood = mood
    @@all << self
  end
end