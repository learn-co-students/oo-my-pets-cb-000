class Owner
  attr_accessor :name, :pets
  attr_reader :species
  #OWNERS = []
  @@all = []

  def initialize(species = "human")
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    #OWNERS << self
    @@all << self
  end

  def self.all
    #OWNERS
    @@all
  end

  def self.reset_all
    #OWNERS.clear
    @@all.clear
  end

  def self.count
    #OWNERS.count
    @@all.count
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    # pets[:fishes] << Fish.new(name) # Learn.co solution
    pets[:fishes].push(Fish.new(name))
  end

  def buy_cat(name)
    pets[:cats].push(Cat.new(name))
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    # Learn.co solution uses #each instead of #collect
    pets[:dogs].collect do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood=("happy") # explicitly calling #mood=()
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood=("happy")
    end
  end

  def sell_pets
    pets.collect do |pet_type, pet_array|
      pet_array.each do |pet|
        pet.mood=("nervous")
      end.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

end
