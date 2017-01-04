class Dog
  attr_reader :mood, :name, :dog

  def initialize(name)
    @name = name
    @mood = "nervous"
    @dog = dog

  end

  def mood=(moody)
    @mood = moody
  end
end
