require "pry"


class Owner
  @@all=[]
  @@count=0
  attr_reader :species
  attr_accessor :name, :pets

  def initialize(name)
    @name=name
    @@all << self
    @@count+=1
    @species="human"
    @pets={:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count=0
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood="happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood="happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood="happy"}
  end

  def sell_pets
    self.pets.each do |species, pets|
      pets.each do |pet|
        pet.mood="nervous"
      end
      pets.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end
