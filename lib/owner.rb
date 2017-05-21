require 'pry'

class Owner
  # code goes here

  attr_accessor :name, :dogs, :cats, :fishes, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
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
    self.pets[:dogs].each {|d| d.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|c| c.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|f| f.mood = "happy"}
  end

  def sell_pets
    self.pets.map do |k, v|
      v.each {|p| p.mood = "nervous"}
    end
    self.pets.clear
  end

  def list_pets
    fish_count = self.pets[:fishes].count
    cat_count = self.pets[:cats].count
    dog_count = self.pets[:dogs].count
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end
