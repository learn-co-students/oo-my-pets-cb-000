require "pry"
class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], dogs: [], cats: []}
    @@all << self
    @@count += 1
  end

  def buy_fish(name)
    name = Fish.new(name)
    @pets[:fishes] << name
  end

  def buy_cat(name)
    name = Cat.new(name)
    @pets[:cats] << name
  end

  def buy_dog(name)
    name = Dog.new(name)
    @pets[:dogs] << name
  end

  def walk_dogs
    @pets[:dogs].map {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].map {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].map {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each {|species, animal| animal.map {|pet| pet.mood = "nervous"}}
    @pets.clear
  end

  def list_pets
    fish_amount = @pets[:fishes].size
    dog_amount = @pets[:dogs].size
    cat_amount = @pets[:cats].size
    "I have #{fish_amount} fish, #{dog_amount} dog(s), and #{cat_amount} cat(s)."
  end

  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
    @@all.clear
  end
end
