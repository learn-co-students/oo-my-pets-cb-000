class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(species)
     @species = species
     @pets = {fishes: [], cats: [], dogs: []}
     @@all << self
  end

  # class Methods

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  # Instance methods

  def self.species
    @species
  end

  def say_species
    return "I am a #{@species}."
  end


  def name
    @name
  end

  def pets
    @pets
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
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
     self.pets.each do |key, arr|
     arr.each {|art| art.mood = "nervous"}
     arr.clear
   end
  end

  def list_pets
    dogs_count = self.pets[:dogs].size
    fish_count = self.pets[:fishes].size
    cats_count = self.pets[:cats].size
    "I have #{fish_count} fish, #{dogs_count} dog(s), and #{cats_count} cat(s)."
  end

end
