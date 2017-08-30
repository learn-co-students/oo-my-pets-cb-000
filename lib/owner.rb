class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.size
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].each{|d| d.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each{|c| c.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each{|f| f.mood = "happy"}
  end

  def sell_pets
    self.pets.values.each do |arr|
      arr.each do |animal|
        animal.mood = "nervous"
      end
    end
    self.pets.clear
  end

  def list_pets
    a = self.pets[:fishes].size
    b = self.pets[:dogs].size
    c = self.pets[:cats].size
    "I have #{a} fish, #{b} dog(s), and #{c} cat(s)."
  end
end
