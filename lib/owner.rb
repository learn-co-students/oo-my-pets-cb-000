class Owner
  attr_accessor :pets, :name
  @@all = []
  def initialize(species)
    @pets = {cats: [], dogs: [], fishes: []}
    @species = species
    @@all << self
  end
  def species
    @species
  end
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end
  def pets
    @pets
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
  def self.reset_all
    @@all = []
  end
  def self.all
    @@all
  end
  def say_species
    "I am a #{@species}."
  end
  def self.count
    @@all.count
  end
  def sell_pets
    @pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end
    @pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
    @pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    @pets[:fishes] = []
    @pets[:cats] = []
    @pets[:dogs] = []
  end
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
