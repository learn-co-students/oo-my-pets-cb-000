require 'pry'

class Cat
  # code goes here
  attr_accessor :mood
  attr_reader :name
  def initialize(x)
    @name = x
    @mood = "nervous"
  end
end

