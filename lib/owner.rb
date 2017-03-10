class Owner
  @@owners = []
  @@owners_count = 0
  attr_reader :species
  attr_accessor :name, :pets

  def initialize name
    @name = name
    @species = "human"
    @pets = {:fishes => [], :cats => [], :dogs => []}
    @@owners << self
    @@owners_count+=1
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish name
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def buy_cat name
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog name
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each do |key, val|
      val.each { |animal| animal.mood = "nervous"}
      val.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

  def self.count
    @@owners_count
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
    @@owners_count = 0
  end

end
