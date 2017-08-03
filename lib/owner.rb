require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@owners = []


  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self
    @species = species
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.length
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].map {| d | d.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].map {| c | c.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].map {| f | f.mood = "happy"}
  end

  def sell_pets
    @pets.each do |key, type|
      type.each {|pet| pet.mood = "nervous"}
    end
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

end
