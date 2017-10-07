require "pry"
class Owner
  attr_accessor :owner_species, :pets, :name
  @@all = []

  def initialize(species)
    @owner_species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
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

  def species
    @owner_species
  end

  def say_species
    "I am a #{owner_species}."
  end

  def buy_fish(fish)
    new_fish = Fish.new(fish)
    @pets[:fishes] << new_fish
  end

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog)
    new_dog = Dog.new(dog)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].collect do |a|
      a.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].collect do |a|
      a.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].collect do |a|
      a.mood = "happy"
    end
  end

  def sell_pets
    @pets.collect do |a, b|
      b.collect do |c|
        c.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    dogs = 0
    cats = 0
    fishes = 0

    @pets.collect do |a, b|
        if a == :dogs
          dogs = b.count
        elsif a == :cats
          cats = b.count
        elsif a == :fishes
          fishes = b.count
      end
    end
    "I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end
end
