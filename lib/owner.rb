require 'pry'
class Owner

  ## instance level variables
  attr_reader :species, :name, :pets
  attr_writer :name, :pets
  

  ## class level variables and methods
  @@owners = []

  def self.reset_all
    @@owners = []
  end

  def self.count 
    @@owners.size
  end

  ## instance level
  def initialize(species='human')
    @species = species
    @@owners << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    "I am a #{species}."
  end

  def buy_cat(name) 
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name) 
    pets[:dogs] << Dog.new(name)
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def play_with_cats
    cats.map(&:happify)
  end

  def walk_dogs
  puts "#### ### ### #{@pets} #####"
  puts "dogs are #{dogs}} "
    dogs.map(&:happify)
  end

  def feed_fish
    fishes.map(&:happify)
  end

  def sell_pets
    cats.map(&:distress)
    dogs.map(&:distress)
    fishes.map(&:distress)
    pets.clear
  end

  def list_pets
    "I have #{fishes.size} fish, #{dogs.size} dog(s), and #{cats.size} cat(s)."
  end

  def self.all
    @@owners
  end

  def fishes
    pets[:fishes].select{ |pet| pet.is_a?Fish }
  end

  def dogs
    pets[:dogs].select{ |pet| pet.is_a?Dog }
  end

  def cats
    pets[:cats].select{ |pet| pet.is_a?Cat }
  end

end
