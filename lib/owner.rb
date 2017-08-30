require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :name, :species
  @@all = []
  
  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
   fishy = Fish.new(name)
   @pets[:fishes] = [fishy]
  end

  def buy_cat(name)
    kitty = Cat.new(name)
    @pets[:cats] = [kitty]
   end

  def buy_dog(name)
    pup = Dog.new(name)
    @pets[:dogs] = [pup]
   end

  def walk_dogs
    # binding.pry
    pets[:dogs].each { |d| d.mood = 'happy'}
  end

  def play_with_cats
    pets[:cats].each { |c| c.mood = 'happy'}
  end

  def feed_fish
    pets[:fishes].each { |f| f.mood = 'happy'}
  end

  def sell_pets
    pets.each_pair do |key, product|
      product.map do |m|
        m.mood = "nervous"
      end
    end
    pets.clear
  end

  def list_pets
    # binding.pry
    
  end
end

