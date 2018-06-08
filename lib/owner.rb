class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(name)
    @name= name
    @pets= {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.size
  end

  def self.reset_all
    self.all.clear
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a #{self.species}."
  end

  def name=(name)
    @name= name
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes]<< fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats]<< cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs]<< dog
  end

  def walk_dogs
    dogs = pets[:dogs]
    dogs.each { |dog| dog.mood= "happy" }
  end

  def play_with_cats
    cats = pets[:cats]
    cats.each { |cat| cat.mood= "happy" }
  end

  def feed_fish
    fishes = pets[:fishes]
    fishes.each { |fish| fish.mood= "happy" }
  end

  def sell_pets
    dogs = pets[:dogs]
    dogs.each { |dog| dog.mood= "nervous" }
    cats = pets[:cats]
    cats.each { |cat| cat.mood= "nervous" }
    fishes = pets[:fishes]
    fishes.each { |fish| fish.mood= "nervous" }
    self.pets.each { |type, pets| pets.clear }
  end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end

end
