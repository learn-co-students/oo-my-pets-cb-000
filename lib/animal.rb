class Animal
  @@default_mood = "nervous".freeze
  attr_reader :name
  attr_accessor :mood

  def self.default_mood()
    return @@default_mood
  end

  def initialize(name)
    @name = name
    @mood = @@default_mood
  end

end
