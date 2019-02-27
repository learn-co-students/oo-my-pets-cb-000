class Fish
  attr_accessor :owner, :mood #owner object
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def feed_fish
    @mood = "happy"
  end
end
