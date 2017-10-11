require 'pry'

class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []
  @@owner_count = 0

  def initialize(species)
    @species = species
    @name = name
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
    @@all << self
    @@owner_count += 1
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
    @@owner_count = 0
  end

  def self.count
    @@owner_count
  end

  def say_species
    "I am a #{@species}."
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

  def walk_dogs
    @pets.each do |species, pet|
      if species == :dogs
        pet.each do |pet_name|
          pet_name.mood = "happy"
        end
      end
    end
  end

  def play_with_cats
    @pets.each do |species, pet|
      if species == :cats
        pet.each do |pet_name|
          pet_name.mood = "happy"
        end
      end
    end
  end

  def feed_fish
    @pets.each do |species, pet|
      if species == :fishes
        pet.each do |pet_name|
          pet_name.mood = "happy"
        end
      end
    end
  end

  def sell_pets
    @pets.each do |species, pet|
      pet.each do |pet_name|
        pet_name.mood = "nervous"
      end
      @pets[species].clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
