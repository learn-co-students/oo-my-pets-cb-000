class Owner
  # code goes here
  attr_accessor :name
  attr_reader :species, :fishes, :dogs, :cats
  @@all = []
  @@count = 0

  def initialize(species)
    @species = species
    @@all << self
    @@count += 1
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@count = 0
    @@all = []
  end

  def self.count
    @@count
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
  end

  def pets=(pets)
    pets[:dogs].each { |dog| @pets[:dogs] << dog }
    pets[:cats].each { |cat| @pets[:cats] << cat }
    pets[:fishes].each { |fish| @pets[:fishes] << fish }
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
    @pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = "happy" }
   end

   def feed_fish
     @pets[:fishes].each { |fish| fish.mood = "happy" }
   end

   def sell_pets
     @pets[:dogs].each { |dog| dog.mood = "nervous"}
     @pets[:cats].each { |cat| cat.mood = "nervous"}
     @pets[:fishes].each { |fish| fish.mood = "nervous"}
     @pets[:dogs] = []
     @pets[:cats] = []
     @pets[:fishes] = []
   end

   def list_pets
     "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
   end
end
