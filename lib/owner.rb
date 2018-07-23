class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {
      cats: [],
      dogs: [],
      fishes: []
    }
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{species}."
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

  def feed_fish
    self.pets.each do |k, v|
        if k == :fishes
          v.each do |fish|
            fish.mood = "happy"
          end
        end
      end
  end

  def walk_dogs
    self.pets.each do |k, v|
        if k == :dogs
          v.each do |dog|
            dog.mood = "happy"
          end
        end
      end
  end

  def play_with_cats
    self.pets.each do |k, v|
        if k == :cats
          v.each do |cat|
            cat.mood = "happy"
          end
        end
      end
  end

  def sell_pets
    self.pets.each do |k, v|
        v.each do |pet|
          pet.mood = "nervous"
        end
      end
    self.pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end
