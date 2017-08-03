class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
#---------#Class Methods#---------#
  def initialize (name)
    @name = name
    @pets = {fishes: [], dogs: [], cats: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    self.all.length
  end

#---------#Instance Methods#---------#
  def species
    @species = "human"
  end

  def say_species
    "I am a human."
  end

  def buy_fish(fishName)
    fish = Fish.new(fishName)
    @pets[:fishes] << fish
  end

  def buy_cat (catName)
    cat = Cat.new(catName)
    @pets[:cats] << cat
  end

  def buy_dog (dogName)
    dog = Dog.new(dogName)
    @pets[:dogs] << dog
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
    @pets.each do |petType, pets_hash|
      pets_hash.each {|pet| pet.mood = "nervous"}
    end
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end
