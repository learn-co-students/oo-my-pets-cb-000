require_relative "cat.rb"
require_relative "dog.rb"
require_relative "fish.rb"
class Owner
  attr_reader :species
  attr_accessor :pets, :name
  @@all = []
  def initialize(name)
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @name = name
    @@all << self
  end
  def self.reset_all
    @@all = []
  end
  def self.count
    @@all.size
  end
  def self.all
    @@all
  end
  def say_species
    "I am a human."
  end
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  def sell_pets
    @pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    @pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
    @pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end
    @pets = {fishes: [], cats: [], dogs: []}
  end
  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end
end
Tom = Owner.new("tom")
Tom.buy_fish("Akuma")
Tom.buy_fish("Ryu")
#Tom.feed_fish
#Tom.pets[:fishes].each do |fish|
#  puts fish.mood
#end
puts Tom.list_pets
