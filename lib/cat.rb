require 'pry'

class Cat
  attr_reader :name, :mood

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end

  def mood=(feeling)
    @mood = feeling
  end


end

# name= method or attr_writer :name or attr_accessor :name is used for setting a name and we do not want to allow that type of behavior.
