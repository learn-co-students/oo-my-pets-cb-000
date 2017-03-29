class Dog
  # code goes here
  attr_reader :name, :mood
  def initialize(name)
    @name = name
  end

  def mood=(mood)
    @mood = mood
  end

end
