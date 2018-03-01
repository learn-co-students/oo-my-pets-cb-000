require 'pry'

class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []


  def initialize(x)
    @name = x
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def pets
    @pets
  end

  def buy_fish(x)
    b = Fish.new(x)
    @pets[:fishes] << b
  end

  def buy_cat(x)
    b = Cat.new(x)
    @pets[:cats] << b
  end

  def buy_dog(x)
    b = Dog.new(x)
    @pets[:dogs] << b
  end

  def walk_dogs
    @pets[:dogs].each {|instance| instance.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|instance| instance.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|instance| instance.mood = "happy"}
  end

  def sell_pets
    @pets.each {|key, value| value.each {|instance| instance.mood = "nervous"}}
    @pets.clear
  end

  def list_pets
  fish = @pets[:fishes].length
  dog = @pets[:dogs].length
  cat = @pets[:cats].length

  return "I have #{fish} fish, #{dog} dog(s), and #{cat} cat(s)."
  end

  def say_species
    return "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

end
