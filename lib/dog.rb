class Dog
  # code goes here
  attr_reader :mood, :name

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def name
    @name.dup.freeze
  end

  def mood=(new_mood)
    @mood = new_mood
  end

end