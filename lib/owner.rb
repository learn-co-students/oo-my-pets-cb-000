class Owner
  # code goes here
  @@all = []

  attr_accessor :pets, :name #adding name here allows owner.name = "Katie"
  attr_reader :species

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
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
    "I am a #{species}."
  end

  def buy_fish(name)
    new_pet = Fish.new(name)
    @pets[:fishes] << new_pet
  end

  def buy_cat(name)
    new_pet = Cat.new(name)
    @pets[:cats] << new_pet
  end

  def buy_dog(name)
    new_pet = Dog.new(name)
    @pets[:dogs] << new_pet
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"} #because when we do buy_dog it connects to Dog and initializes with a mood
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each {|species, pets| pets.each {|individual| individual.mood = "nervous"}}
    @pets.each {|species, pets| pets.clear}
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
