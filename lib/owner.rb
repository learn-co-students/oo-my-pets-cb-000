require 'pry'

class Owner
  attr_accessor  :name, :pets
  attr_reader :species
  @@all = []
  def initialize(name = "brand-new human")
    @name=name
    @@all << self
    @species = "human"
    @pets = {fishes:[],dogs:[],cats:[]}
  end

  def self.all
    @@all
  end
  def self.reset_all
    @@all.clear
  end
  def self.count
    @@all.length
  end
  def species
    Owner.new
    @species = "human"
  end

  def say_species
    "I am a #{self.species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    #binding.pry
    fish = Fish.new(name)
    #binding.pry
    (@pets[:fishes]) << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats]<<cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs]<<dog
  end


  def walk_dogs
    @pets[:dogs].collect{|dog|dog.mood="happy"}
  end

  def play_with_cats
    @pets[:cats].collect{|cat|cat.mood="happy"}
  end

  def feed_fish
    @pets[:fishes].collect{|fish|fish.mood="happy"}
  end

  def sell_pets
    @pets.values.flatten.each{|pet|pet.mood="nervous"}
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end





end


#dan = Owner.new("Dan")
#dan.buy_fish("Joe")
