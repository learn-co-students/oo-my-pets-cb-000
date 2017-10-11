require 'pry'

class Owner
  attr_accessor :name
  attr_reader :species
  attr_writer :pets
  @@all = []

  def initialize(species)
    @species = species
    pets
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.size
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets ||= {cats: [], dogs: [], fishes: []}
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].collect {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].collect {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].collect {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets[:fishes].collect {|fish| fish.mood = "nervous"}
    pets[:dogs].collect {|dog| dog.mood = "nervous"}
    pets[:cats].collect {|cat| cat.mood = "nervous"}
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
