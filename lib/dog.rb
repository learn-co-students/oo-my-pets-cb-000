class Dog
  attr_reader :name
  attr_accessor :mood
  def initialize(name)
    @name = name
    @mood = 'nervous'
  end

  def walk
    @mood = 'happy'
  end
end
