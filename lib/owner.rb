require 'pry'
class Owner
  attr_reader :species
  attr_accessor :name, :pets
  @@all = []
  def initialize(name, species="human")
    @name = name
    @@all << self
    @species = species
    @pets = {fishes: [], dogs: [], cats: []}
  end
  def self.all
    @@all
  end
  def self.count
    @@all.size
  end
  def self.reset_all
    @@all = []
  end
  def say_species
    "I am a #{@species}."
  end
  def pets
    @pets
  end
  def buy_fish(name)
    a = Fish.new(name)
    @pets[:fishes] << a
  end
  def buy_cat(name)
    a = Cat.new(name)
    @pets[:cats] << a
  end
  def buy_dog(name)
    a = Dog.new(name)
    @pets[:dogs] << a
  end
  def walk_dogs
    @pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end
  def play_with_cats
    @pets[:cats].map do |cat|
      cat.mood = "happy"
    end
  end
  def feed_fish
    @pets[:fishes].map do |fish|
      fish.mood = "happy"
    end
  end
  def sell_pets
    @pets[:dogs]. map {|dog| dog.mood = "nervous"}
    @pets[:cats]. map {|cat| cat.mood = "nervous"}
    @pets[:fishes]. map {|fish| fish.mood = "nervous"}
    @pets = {fishes: [], dogs: [], cats: []}
  end
  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end
    # @pets = {fishes: [], dogs: [], cats: []}

  # code goes here
end
