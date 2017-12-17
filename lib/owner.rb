class Owner
  attr_accessor :name, :pets
  # can't change its species
  attr_reader :species

  OWNERS = []

  # keeps track of the owners that have been created
  def self.all
    OWNERS
  end

  # can count how many owners have been created
  def self.count
    OWNERS.size
  end

  # can reset the owners that have been created
  def self.reset_all
    OWNERS.clear
  end

  # can initialize an owner
  # initializes with a species
  # is initialized with a pets attribute as a hash with 3 keys
  def initialize (species)
    @species = species
    OWNERS << self
    @pets = { :fishes=>[], :dogs=>[], :cats=>[] }
  end

  # can say its species
  def say_species
    "I am a #{species}."
  end

  # can buy a fish that is an instance of the Fish class
  # knows about its fishes
  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  # feeds the fishes which makes the fishes' moods happy
  def feed_fish
    pets[:fishes].each {|fish| fish.mood = 'happy'}
  end

  # can buy a cat that is an instance of the Cat class
  # knows about its cats
  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  # plays with the cats which makes the cats moods happy
  def play_with_cats
    pets[:cats].each {|cat| cat.mood = 'happy'}
  end

  # can buy a dog that is an instance of the Dog class
  # knows about its dogs
  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  # walks the dogs which makes the dogs' moods happy
  def walk_dogs
    pets[:dogs].each {|dog| dog.mood = 'happy'}
  end

  # can sell all its pets, which make them nervous
  def sell_pets
    pets.each do |species, animals|
      animals.each {|animal| animal.mood = 'nervous'} # change each animal's mood
      animals.clear # clear all animals from pets hash
    end
  end

  # can list off its pets
  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
