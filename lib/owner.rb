#require 'pry'

class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@owners = []

  def initialize(species)
    @species = species
    @@owners << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def say_species
    "I am a #{@species}."
  end

  def self.reset_all
    @@owners = []
  end

  def self.count
    @@owners.size
  end

  def self.all
    @@owners
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    @pets[:fishes] << fish
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    @pets[:cats] << cat
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = 'happy'}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = 'happy'}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = 'happy'}
  end

  def sell_pets
    @pets[:dogs].each {|dog| dog.mood = 'nervous'}
    @pets[:cats].each {|cat| cat.mood = 'nervous'}
    @pets[:fishes].each {|fish| fish.mood = 'nervous'}

    @pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end

#binding.pry

#puts 'end'
