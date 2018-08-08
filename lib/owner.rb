require 'pry'
class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []
  
  def initialize(name)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end
  
  def buy_cat(name)
    pet = Cat.new(name)
    @pets[:cats] << pet
  end
  
  def buy_dog(name)
    pet = Dog.new(name)
    @pets[:dogs] << pet 
  end
  
   def buy_fish(name)
    pet = Fish.new(name)
    @pets[:fishes] << pet 
  end
  
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end  
  
  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end  
  
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  
  def sell_pets
    @pets.each do |pet_type, pet_array|
      pet_array.each do |pet|
        pet.mood = "nervous"
      end
      pet_array.clear
    end
  end
  
  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
  
  def species
    @species = "human"
  end
  
  def say_species
    "I am a human."
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
end