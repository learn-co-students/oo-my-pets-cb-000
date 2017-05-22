class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize species
    @species = species
    @@all << self
    self.pets = {fishes: [], dogs: [], cats: []}
    # binding.pry
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

  def buy_fish fish_name
    fish = Fish.new fish_name
    self.pets[:fishes] << fish
  end

  def buy_cat cat_name
    cat = Cat.new cat_name
    self.pets[:cats] << cat
  end

  def buy_dog dog_name
    dog = Dog.new dog_name
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |index, pet_kind|
      pet_kind.each {|pet| pet.mood = "nervous"}
    end
    self.pets = {}
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end
