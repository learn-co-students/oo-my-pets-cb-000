require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], dogs: [], cats: []}
    self.save
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def save
    self.class.all << self
  end

  def self.count
    self.all.size
  end

  def say_species
    "I am a #{species}."
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
    @pets[:dogs].each {|d| d.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|c| c.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|f| f.mood = "happy"}
  end

  def sell_pets
    @pets.each do |type|
      type[1].each {|pet| pet.mood = "nervous"}
    end
    @pets.clear
  end

  def list_pets
    pets_owned = "I have"
    @pets.each do |type|
      if type[0] == :fishes
        type_name = "fish,"
      elsif type[0] == :dogs
        type_name = "dog(s),"
      else
        type_name = "cat(s)."
      end
      pets_owned += " and" if type[0] == :cats
      pets_owned += " #{type[1].size} #{type_name}"
    end
    pets_owned
  end

end
