class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  def initialize(species)
    @species = species
    @@all << self
    @pets =   {fishes: [], dogs: [], cats: []}
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

  def species
    @species
  end
  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    self.pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    self.pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    self.pets[:dogs].map do |x|
      x.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].map do |x|
      x.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].collect do |x|
      x.mood = "happy"
    end
  end

  def sell_pets
    self.pets.map do |key, value|
      self.pets[key].map do |value|
        value.mood = "nervous"
      end
      self.pets[key].clear
    end
  end
  def list_pets

  "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."

  end
  # Alternative superfluous Solution for list_pets
  # def list_pets
  #   counter = {}
  #   self.pets.each do |key, value|
  #       counter[key] = self.pets[key].count
  #   end
  #   "I have #{counter[:fishes]} fish, #{counter[:dogs]} dog(s), and #{counter[:cats]} cat(s)."
  # end

end
