require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(name, species="human")
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
  end


  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.count
  end

  def species
    @species
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    pets[:fishes] <<fish
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    pets[:cats] << cat
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs].each do |x|
      x.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |x|
      x.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |x|
      x.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |x, y|
      y.each do |z|
        z.mood = "nervous"
      end
    end
    @pets = {}
  end

  def list_pets
    @fishes = pets[:fishes].count
    @dogs = pets[:dogs].count
    @cats = pets[:cats].count
      return "I have #{@fishes} fish, #{@dogs} dog(s), and #{@cats} cat(s)."
  end
end
