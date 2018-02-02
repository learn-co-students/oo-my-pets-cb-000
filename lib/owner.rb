class Owner
  @@all = []
  attr_accessor :name, :pets

  def initialize(name)
    self.name = name
    self.pets = { fishes: [], dogs: [], cats: [] }
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

  def species
    'human'
  end

  def say_species
    'I am a human.'
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].each { |dog| dog.mood = 'happy' }
  end

  def play_with_cats
    self.pets[:cats].each { |cat| cat.mood = 'happy' }
  end

  def feed_fish
    self.pets[:fishes].each { |fish| fish.mood = 'happy' }
  end

  def sell_pets
    self.pets.each { |type, pets| pets.each { |pet| pet.mood = 'nervous' }}
    self.pets = { fishes: [], dogs: [], cats: [] }
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end
end
