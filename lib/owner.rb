class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each {|d| d.mood = 'happy'}
  end

  def play_with_cats
    self.pets[:cats].each {|c| c.mood = 'happy'}
  end

  def feed_fish
    self.pets[:fishes].each {|f| f.mood = 'happy'}
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each {|p| p.mood = 'nervous'}
      pets.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end

end
