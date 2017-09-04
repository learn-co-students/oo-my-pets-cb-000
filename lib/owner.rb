class Owner
  attr_accessor :pets
  attr_reader :species
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    save
  end

  def say_species
    return "I am a #{@species}."
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    return @@all.size
  end

  def buy_cat(name)
    pet = Cat.new(name)
    pets[:cats] << pet
  end

  def buy_dog(name)
    pet = Dog.new(name)
    pets[:dogs] << pet
  end

  def buy_fish(name)
    pet = Fish.new(name)
    pets[:fishes] << pet
  end

  def get_pets
    result = []
    pets.values.each{|pet_type|
    pet_type.each{|pet|
      result << pet
      }}
      return result
  end

  def list_pets
    fishnum = @pets[:fishes].size
    dognum = @pets[:dogs].size
    catnum = @pets[:cats].size
    return "I have #{fishnum} fish, #{dognum} dog(s), and #{catnum} cat(s)."
  end

  def sell_pets
    get_pets.each{|pet|
    pet.mood = "nervous"
  }
  @pets[:fishes] = []
  @pets[:dogs] = []
  @pets[:cats] = []
  end

  def walk_dogs
    @pets[:dogs].each{ |pet|
      pet.mood = "happy"
    }
  end

  def play_with_cats
    @pets[:cats].each{ |pet|
      pet.mood = "happy"
    }
  end

  def feed_fish
    @pets[:fishes].each{ |pet|
      pet.mood = "happy"
    }
  end

end
