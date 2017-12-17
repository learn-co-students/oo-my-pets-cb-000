class Cat
  # can't change its name
  attr_reader :name
  # can change its mood
  attr_accessor :mood

  # initializes with a name
  # initializes with a nervous mood
  def initialize(name)
    @name = name
    @mood = 'nervous'
  end
end
