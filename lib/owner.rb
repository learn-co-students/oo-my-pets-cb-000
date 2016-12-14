class Owner
  attr_reader :species
  attr_accessor :pets, :name
  OWNERS = []

  def initialize(species)
    @species = species
    OWNERS << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    OWNERS
  end

  def self.count
    OWNERS.size
  end

  def self.reset_all
    OWNERS.clear
  end

  def say_species
    return "I am a #{species}."
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |x, y|
      y.each do |pet|
        pet.mood = "nervous"
      end
      y.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

  # expect(owner.list_pets).to eq("I have 2 fish, 3 dog(s), and 1 cat(s).")
  # got: {:fishes=>[#<Fish:0x007f878d879a30 @name="Bubbles", @mood="nervous">, #<Fish:0x007f878d879968 @name="...79558 @name="Snuffles", @mood="nervous">, #<Dog:0x007f878d8794e0 @name="Charley", @mood="nervous">]}

end

# learn ./spec/owner_spec.rb

# An owner should know about its pets! Instances of the Owner class should be initialized with an @pets variable,
# set equal to the following hash: {fishes: [], cats: [], dogs: []}
# An owner should be able to buy and sell pets, and therefore alter the @pets hash.
# You will therefore need a setter and a getter method (attr_accessor) for pets.
# When an owner buys a new pet, the buy_cat/dog/fish method takes in an argument of a name.
# You must take that name and do the following:
# Make a new instance of the appropriate pet, initializing it with that name.
# Associate that new pet instance to the owner by adding it to the appropriate array-value
# of the @pets hash stored in the pets attr_accessor.
# When an owner plays with a cat or feeds a fish or walks a dog, that pet will get happier.
# Remember that the pets method stores all of an owners pets. The @pets hash stored in that method
# is full of instances of the Cat/Dog/Fish class. That means you can call Cat/Dog/Fish instance methods
# (such as .mood=) on those pets.
