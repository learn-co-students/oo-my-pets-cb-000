require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []
  @@count = 0

  def initialize(name, species = "human")
    @@all << self
    @species = species
    @@count += 1
    @pets = {fishes: [], dogs:[], cats:[]}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all == [] ? @@count = 0 : @@count
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(name)
  new_fish = Fish.new(name)
  add_pet = @pets[:fishes] << new_fish
  end

  def buy_cat(name)
  new_cat = Cat.new(name)
  add_pet = @pets[:cats] << new_cat
  end

  def buy_dog(name)
  new_dog = Dog.new(name)
  add_pet = @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].each{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def sell_pets
  @pets[:dogs].each{|dog| dog.mood = "nervous"}.clear
  @pets[:cats].each{|cat| cat.mood = "nervous"}.clear
  @pets[:fishes].each{|fish| fish.mood = "nervous"}.clear
  end

  def list_pets
    dog_count = @pets[:dogs].length
    cat_count = @pets[:cats].length
    fish_count = @pets[:fishes].length
    return "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end


end
