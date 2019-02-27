class Cat
  attr_accessor :owner, :mood #owner object
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def play_with_cats
    @mood = "happy"
  end
end
