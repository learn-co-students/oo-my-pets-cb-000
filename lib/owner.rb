class Owner
  attr_reader :species, :fishes, :cats, :dogs
  attr_accessor :name, :pets
  @@all = []

  def initialize(species)
    @species = species
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
    @@all << self
  end

  def self.count
    return @@all.size
  end

  def self.reset_all
    @@all = []
  end

  def self.all
    return @@all
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
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
    @pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    @pets[:dogs] = []
    @pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
    @pets[:cats] = []
    @pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end
    @pets[:fishes] = []
  end

  def list_pets
    return "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

end
