class Owner
  # code goes here
  attr_accessor :pets
  attr_reader :species, :name

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def name=(name)
    @name = name
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |type, pets|
      pets.each {|pet| pet.mood = "nervous"}
      @pets[type] = pets.clear
    end
  end

  def list_pets
    pets_count = {}
    @pets.each { |type, pets| pets_count[type] = pets.size}
    "I have #{pets_count[:fishes]} fish, #{pets_count[:dogs]} dog(s), and #{pets_count[:cats]} cat(s)."
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

end
