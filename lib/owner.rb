require 'rake'
require 'pry'

class Owner
  # code goes here
  attr_accessor :name
  attr_reader :pets, :species
  attr_writer :pets

  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
    @species = "human"
    @@count += 1
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
    @@count = 0
  end

  def self.count
    @@count
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    #put fish into @pets{:fish}
    @pets[:fishes] << fish
  end
  def buy_cat(name)
    cat = Cat.new(name)
    #put fish into @pets{:fish}
    @pets[:cats] << cat
  end
  def buy_dog(name)
    dog = Dog.new(name)
    #put fish into @pets{:fish}
    @pets[:dogs] << dog
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
    @pets.each do |species, animal|
      animal.each do |a|
        #set animals mood to nervous
        a.mood = "nervous"
      end
      #clear the []
      animal.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
