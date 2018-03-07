class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets
  @@all =[]

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.size
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)

    pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = 'happy'
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = 'happy'
    end
  end

  def sell_pets
    pets.each do |k,v|
      v.each do |pet|
        pet.mood = 'nervous'
        # p pet.mood
      end
      v.clear
    end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end
  end
end
