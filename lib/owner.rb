require 'pry'
class Owner
  attr_reader  :species
  attr_accessor :name, :pets
  @@all = []
  @@count = 0

  def initialize(species)
      # @name = name
    @species = species
    @@count += 1
    @pets = {fishes: [], cats: [], dogs: []}
    save
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood="happy"
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

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

  def sell_pets
    @pets[:dogs].each {|x| x.mood="nervous"}
    @pets[:cats].each {|x| x.mood="nervous"}
    @pets[:fishes].each {|x| x.mood="nervous"}

    @pets[:dogs].clear
    @pets[:cats].clear
    @pets[:fishes].clear

    #
    # @pets.each do |species|
    #   species.each do |animal|
    #     binding.pry
    #     animal.mood = "nervous"
    #   end
    # end
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
  def say_species
    "I am a #{@species}."
  end
  def self.all
    @@all
  end

  def self.count
    @@count
  end
  def save
    @@all << self
  end

  def self.reset_all
    @@all.clear
    @@count = 0
  end


end
