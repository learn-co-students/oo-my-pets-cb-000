class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    self.class.all << self
  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def feed_fish
    pets[:fishes].each {|f| f.mood = "happy"}
  end

  def walk_dogs
    pets[:dogs].each {|d| d.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|c| c.mood = "happy"}
  end

  def sell_pets
    pets.each do |species,list|
      list.each {|pet| pet.mood = "nervous"}
      pets[species] = []
    end
  end

  def list_pets
      "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."      
    end


  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end


end
