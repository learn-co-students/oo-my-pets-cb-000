class Owner

  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @species = species
    @pets = { fishes: [], dogs: [], cats: [] }
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

  def say_species
    "I am a #{self.species}."
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
    @pets[:dogs].map { |dog| dog.mood = 'happy' }
  end

  def play_with_cats
    @pets[:cats].map { |cat| cat.mood = 'happy' }
  end

  def feed_fish
    @pets[:fishes].map { |fish| fish.mood = 'happy' }
  end

  def sell_pets
    self.pets.each do |pet, array|
      array.map { |obj| obj.mood = 'nervous' }
      array.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end

end
