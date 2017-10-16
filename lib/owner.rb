class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], dogs: [], cats: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes].unshift(fish)
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats].unshift(cat)
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs].unshift(dog)
  end

  def walk_dogs
    dogs = pets[:dogs]
    dogs.each { |dog| dog.mood = "happy"}
  end

  def play_with_cats
    cats = pets[:cats]
    cats.each { |cat| cat.mood = "happy"}
  end

  def feed_fish
    fishes = pets[:fishes]
    fishes.each { |fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each do |species, list|
      list.each do |pet|
        pet.mood = "nervous"
      end
    end
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
