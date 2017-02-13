class Owner
  attr_accessor :name, :pets
  attr_reader :species
  # code goes here
  @@all = []

  def initialize(species)
    @@all << self
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
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

  def play_with_cats
    self.pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def walk_dogs
    self.pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def feed_fish
    self.pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

  def sell_pets
    pets.each do |pet_type, pets|
      pets.each { |pet| pet.mood = "nervous" }
      pets.clear
    end
  end

  def self.count
    @@all.count
  end

end