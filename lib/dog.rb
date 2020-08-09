class Dog
  # code goes here
  attr_accessor :mood, :owner
  attr_reader :name
  @@dogs = []

  def initialize(name, owner, mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood
    @@dogs << self
  end

  def self.all
    @@dogs
  end
end
