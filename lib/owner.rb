class Owner
  attr_reader :species
  attr_accessor :name, :pets

  OWNERS = []
  @@count = 0

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    OWNERS << self
    @@count += 1
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

  def feed_fish
    @pets[:fishes].each{ |fish| fish.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].each{ |cat| cat.mood = "happy" }
  end

  def walk_dogs
    @pets[:dogs].each{ |dog| dog.mood = "happy" }
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

  def sell_pets
    @pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end

  def self.all
    OWNERS
  end

  def self.count
    OWNERS.count
  end

  def self.reset_all
    OWNERS.clear
  end

end
