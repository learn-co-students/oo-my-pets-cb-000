class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @species = species
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}

    @@all << self
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
      @pets[:dogs].collect do |d|
        d.mood = "happy"
      end
  end

  def play_with_cats
    @pets[:cats].collect do |c|
      c.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].collect do |f|
      f.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |type, instance|
      instance.each do |p|
        p.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    return ("I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s).")
  end

end
