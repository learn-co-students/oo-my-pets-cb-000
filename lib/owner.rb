class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets

  @@owners = []
  def initialize(name)
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self
    @species = "human"
    @name = name
  end

  def buy_cat(name)

    @pets[:cats] << Cat.new(name)

  end


  def buy_fish(name)

    @pets[:fishes] << Fish.new(name)


  end

  def buy_dog(name)

    @pets[:dogs] << Dog.new(name)

  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners = []

  end

  def self.count
    @@owners.count

  end

  def say_species
    "I am a #{@species}."
  end

  def walk_dogs

    @pets[:dogs].map {|dog| dog.mood = "happy"}

  end

  def play_with_cats

    @pets[:cats].map {|cat| cat.mood = "happy"}

  end

  def feed_fish

    @pets[:fishes].map {|fish| fish.mood = "happy"}

  end

  def sell_pets
    @pets[:fishes].map {|fish| fish.mood = "nervous"} unless @pets[:fishes].empty?
    @pets[:cats].map {|cat| cat.mood = "nervous"} unless @pets[:cats].empty?
    @pets[:dogs].map {|dog| dog.mood = "nervous"} unless @pets[:dogs].empty?
    @pets = {}

  end

  def list_pets
  "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end



end
