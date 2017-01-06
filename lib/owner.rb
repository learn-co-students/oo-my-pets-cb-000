require 'pry'
class Owner
  # code goes here
  attr_accessor :name ,:pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    bought_fish = Fish.new(name)
    @pets[:fishes] << bought_fish
  end

  def buy_cat(name)
    bought_cat = Cat.new(name)
    @pets[:cats] << bought_cat
  end

  def buy_dog(name)
    bought_dog = Dog.new(name)
    @pets[:dogs] << bought_dog
  end

  def walk_dogs
    @pets[:dogs].map{|doggo| doggo.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].map{|kitty| kitty.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].map{|fishies| fishies.mood = "happy"}
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

  def sell_pets
    # Iterate through pet hash
    #  Iterate through every value in the current pet array
    # set their mood to nervous
    # empty pets hash

    @pets.each do |key,array|
      array.each {|o| o.mood = "nervous"}
    end
    @pets.clear
  end

  def self.count
    @@all.length
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end
end
