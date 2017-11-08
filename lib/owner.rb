class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@owners = 0
  @@all=[]

  def initialize(species)
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @species = species
    @@owners += 1
    @@all << self
  end
  def self.count
    @@owners
  end

  def self.reset_all
    @@all.clear
    @@owners = 0
  end

  def self.all
    @@all
  end
  def say_species
    "I am a #{@species}."
  end

  def name
    @name
  end

  def pets
    @pets
  end

  def buy_fish(name)
    f = Fish.new(name)
     pets[:fishes] << f
  end

  def buy_cat(name)
    c = Cat.new(name)
     pets[:cats] << c
  end

  def buy_dog(name)
    d = Dog.new(name)
     pets[:dogs] << d
  end

  def walk_dogs
     pets[:dogs].map { |dog|dog.mood = "happy"  }
  end

  def play_with_cats
     pets[:cats].map { |cat|cat.mood = "happy"  }
  end

  def feed_fish
     pets[:fishes].map { |fish|fish.mood = "happy"}
  end

  def sell_pets
     pets.each do |type, pet|
      pet.map { |animal| animal.mood = "nervous"}
    end
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

end
