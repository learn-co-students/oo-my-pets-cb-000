
#The Cat class can initialize a cat, initializes with a name, can't change its name,
#initializes with a nervous mood, but can change its mood

class Cat
  attr_accessor :mood
  attr_reader :name


  def initialize(name)
    @name = name
    @mood = "nervous"
    
  end


end