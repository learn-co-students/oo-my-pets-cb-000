class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@pets = {} #hash of pets
  @@all = []  #array of all owners

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
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

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def walk_dogs
    @pets[:dogs].collect { |d| d.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].collect { |d| d.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].collect { |d| d.mood = "happy"}
  end

  def sell_pets
    @pets.each do |type, pets|
      pets.each { |p| p.mood = "nervous"}
    end
    @pets.clear
  end

  def list_pets
    if @pets.count > 0
      "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
    else
      "I don't have any pets"
    end
  end
end
