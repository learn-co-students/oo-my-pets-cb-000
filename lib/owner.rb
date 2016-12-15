require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []
  @@count = 0

  def initialize(species="human")
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}

    self.class.all << self
    @@count += 1
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
    @@count = 0
  end

  def self.count
    @@count
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def dogs
    pets[:dogs]
  end
  def walk_dogs
    dogs.each do |d|
      d.walk
    end
  end

  def play_with_cats
    pets[:cats].each do |c|
      c.play
    end
  end

  def feed_fish
    pets[:fishes].each do |f|
      f.feed
    end
  end

  def sell_pets
    pets.values.flatten.each do |pet|
      pet.mood = 'nervous'
    end
    pets.keys.each do |k|
      pets[k] = []
    end
  end

  def list_pets
    n_fish = pets[:fishes].length
    n_dogs = pets[:dogs].length
    n_cats = pets[:cats].length
    "I have #{n_fish} fish, #{n_dogs} dog(s), and #{n_cats} cat(s)."
  end
end
