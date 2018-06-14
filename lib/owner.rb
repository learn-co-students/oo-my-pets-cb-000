class Owner

  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
      }
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    a = Fish.new(name)
    @pets[:fishes] << a
  end

  def buy_cat(name)
    a = Cat.new(name)
    @pets[:cats] << a
  end

  def buy_dog(name)
    a = Dog.new(name)
    @pets[:dogs] << a
  end

  def walk_dogs
    @pets[:dogs].each do |i|
      i.mood = "happy"
    end
  end


  def play_with_cats
    @pets[:cats].each do |i|
      i.mood = "happy"
    end
  end


  def feed_fish
    @pets[:fishes].each do |i|
      i.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |a, b|
      b.each do |y|
        y.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
