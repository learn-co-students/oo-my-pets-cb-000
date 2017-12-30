class Owner
  attr_reader :species, :pets
  attr_accessor :name

  def initialize(species)
    @@all << self
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.all
    @@all = []
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def feed_fish(name)
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def play_with_cats(name)
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs(name)
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |type, pets|

      pets.each do |pet|
        pet.name = "nervous"
      end

    end

    @pets = {}
  end

  def list_pets
    puts "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

end
