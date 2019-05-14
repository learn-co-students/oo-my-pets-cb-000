
class Cat
  attr_accessor :name, :mood

  def initialize(name, mood="nervous")
    @name = name
    @mood = mood
  end

  private
  def name=(name)
    @name
  end
end
