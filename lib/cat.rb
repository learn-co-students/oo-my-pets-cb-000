class Cat
  attr_reader :name
  attr_accessor :mood
  def initialize(name)
    @name = name
    @mood = 'nervous'
  end

  def play
    @mood = 'happy'
  end

end
