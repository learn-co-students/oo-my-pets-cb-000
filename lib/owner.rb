class Owner
  attr_accessor :name, :pets

  @@owners = []

  def initialize(name)
    @name = name
    @@owners << self
    @pets = {fishes: [], cats: [], dogs: []}
    @species = 'human'
  end

  def self.all
    @@owners
  end

  def self.reset_all
    self.all.clear
  end

  def species
    @species = 'human'
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    self.pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    self.pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    self.pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    self.pets[:dogs].each { |dog| dog.mood = 'happy'}
  end

  def play_with_cats
    self.pets[:cats].each { |cat| cat.mood = 'happy'}
  end

  def feed_fish
    self.pets[:fishes].each { |fish| fish.mood = 'happy'}
  end

  def sell_pets
    self.pets.each do | type, pet|
      pet.each do |current_pet|
        current_pet.mood = 'nervous'
      end
      pet.clear
    end
  end

  def list_pets
    dog_count = self.pets[:dogs].count
    cat_count = self.pets[:cats].count
    fish_count = self.pets[:fishes].count
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end
