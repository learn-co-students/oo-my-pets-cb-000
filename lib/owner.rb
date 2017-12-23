class Owner

  attr_accessor :pets, :name

  @@all = []

  def initialize(species)
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @species = species
    @@all << self
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
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
    @pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def sell_pets
    @pets.each { |type, animals|
      animals.each { |animal| animal.mood = "nervous" }
    }
    @pets = []
  end

  def list_pets
    fish_count = @pets[:fishes].size
    dog_count = @pets[:dogs].size
    cat_count = @pets[:cats].size
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

  def self.count
    @@all.length
  end
end
