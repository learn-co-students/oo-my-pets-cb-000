class Owner
  attr_accessor :pets, :name

  attr_reader :species

  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @species = "human"
    @pets = { fishes: [], cats: [], dogs: [] }
    @@all << self
    @@count += 1
  end

  def say_species
    "I am a human."
  end

  def self.all
    @@all
  end

  def buy_dog(name)
    fish = Dog.new(name)
    @pets[:dogs] << fish
  end

  def buy_cat(name)
    fish = Cat.new(name)
    @pets[:cats] << fish
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@all =[]
    @@count = 0
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each  do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      pets.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
