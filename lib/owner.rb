class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  def initialize(species)
    @species = species
    @@all << self
    @pets =   {fishes: [], dogs: [], cats: []}
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
    @species
  end
  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    self.pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    self.pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    self.pets[:dogs]
  end

end
