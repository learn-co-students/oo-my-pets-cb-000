class Dog
  attr_reader :name
  attr_reader :owner
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

end
