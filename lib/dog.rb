class Dog
  attr_accessor :owner, :mood #owner object
  attr_reader :name

  def initialize(name)
   @name = name
   @mood = "nervous"
  end

  def walk_dogs
    @mood = "happy"
  end
end
