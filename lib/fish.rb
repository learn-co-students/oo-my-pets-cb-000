class Fish
  attr_accessor :owner
  attr_reader :name, :mood

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end

  def mood=(feeling)
    @mood = feeling
  end

end
