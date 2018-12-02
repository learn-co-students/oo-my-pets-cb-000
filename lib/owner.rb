class Owner
  # code goes here

  @@all = []
  attr_reader :name, :species

  def initialize(name)
    @pets = {fishes: [], cats: [], dogs: []}
    @name = name
    @species = "human"
    @@all << self

  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.count
  end

  def say_species
    return "I am a #{@species}."
  end

  def name=(name)
    @name = name
  end

  def pets=(pets)
    @pets=pets
  end

  def pets
    @pets
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
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

  def sell_pets

    @pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    @pets[:dogs] = []

    @pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
    @pets[:cats] = []

    @pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end
    @pets[:fishes] = []

  end

  def list_pets
    return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
