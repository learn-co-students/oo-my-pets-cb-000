class Dog
  attr_accessor :mood
  attr_reader :name
  @@all = []

  def initialize(name, mood = 'nervous')
    @name = name
    @mood = mood
    @@all = []
  end

  def self.all 
    @@all
  end
end 