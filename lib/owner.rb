class Owner
  # code goes here
  @@all = []
  @@owner_count = 0
  attr_accessor :pets, :name
  attr_reader :species

  def initialize(species)
    @name = name
    @species = species
    @@all << self
    @@owner_count += 1
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.count
    @@owner_count
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
    @@owner_count = 0

  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(name_of_fish)
    fish = Fish.new(name_of_fish)
    @pets[:fishes] << fish
  end

  def buy_cat(name_of_cat)
    cat = Cat.new(name_of_cat)
    @pets[:cats] << cat
  end

  def buy_dog(name_of_dog)
    dog = Dog.new(name_of_dog)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each { |fish| fish.mood = "happy"}

  end

  def sell_pets
    @pets.each do |type, pets|
      pets.each { |pet| pet.mood = "nervous"}
    end
    @pets.clear
  end

  def list_pets
    return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
