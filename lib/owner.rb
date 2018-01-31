require "pry"

class Owner
  attr_accessor :name, :pets
  attr_writer
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs][0].mood = 'happy'
  end

  def play_with_cats
    self.pets[:cats][0].mood = 'happy'
  end

  def feed_fish
    self.pets[:fishes][0].mood = 'happy'
  end

  def sell_pets
    self.pets[:fishes].each {|pet| pet.mood = 'nervous' }
    self.pets[:dogs].each {|pet| pet.mood = 'nervous' }
    self.pets[:cats].each {|pet| pet.mood = 'nervous' }
    self.pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    tmp = self.pets.collect { |type| "#{type[1].count}" }
    "I have #{tmp[0]} fish, #{tmp[1]} dog(s), and #{tmp[2]} cat(s)."
  end

end
