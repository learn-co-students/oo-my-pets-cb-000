require 'pry'
class Owner
  # code goes here
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    self.save
  end

  def self.count
    self.all.size
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def save
    self.class.all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    @pets[:fishes] << fish
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    @pets[:cats] << cat
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each do |i|
      i.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |i|
      i.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |i|
      i.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |type, pets|
      pets.each do |i|
        i.mood = "nervous"
        #binding.pry
      end
      pets.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

end
