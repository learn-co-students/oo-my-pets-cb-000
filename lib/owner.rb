class Owner
  @@all = Array.new
  @@default_species = "human".freeze
  attr_reader :species
  attr_accessor :name, :pets

  def self.all()
    return @@all
  end

  def self.reset_all()
    @@all.clear
  end

  def self.count()
    return @@all.size
  end

  def initialize(name)
    @@all << self
    @species = @@default_species
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species()
    return "I am a #{self.species}."
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

  def walk_dogs()
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats()
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish()
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets()
    self.pets.values.each {|pet_array|
      pet_array.each{|pet| pet.mood = Animal.default_mood}
      pet_array.clear
    }
  end

  def list_pets()
    return "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end
end
