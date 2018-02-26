class Fish

  attr_accessor :mood
  attr_writer
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

end
