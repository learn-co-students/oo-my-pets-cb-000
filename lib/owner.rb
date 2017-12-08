class Owner
  attr_reader :species
  attr_accessor :name, :pets, :fish, :dog, :cat
  @@all = []
  # code goes here
  def initialize(name)
    @name = name
    @@all << self
    @species = 'human'
    @pets = {fishes: [], dogs: [], cats: []}
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

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    @pets[:dogs].each {|x| x.mood = 'happy'}
  end

  def play_with_cats
    @pets[:cats].each {|x| x.mood = 'happy'}
  end

  def feed_fish
    @pets[:fishes].each {|x| x.mood = 'happy'}
  end

  def sell_pets
    @pets.each_value do |pet_array|
      pet_array.each {|pets| pets.mood = 'nervous'}
    end
    @pets.each_value {|pet_array| pet_array.clear}
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
