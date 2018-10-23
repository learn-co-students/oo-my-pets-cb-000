class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  @@count = 0
  def initialize(name)
    @name = name
    @species = 'human'
    @pets = {:fishes => [], :cats => [], :dogs => []}
    @@all << self
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@count = 0
  end

  def say_species
    "I am a human."
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
    @pets[:dogs].each{|dog| dog.mood = 'happy'}
  end

  def play_with_cats
    @pets[:cats].each{|cat| cat.mood = 'happy'}
  end

  def feed_fish
    @pets[:fishes].each{|fish| fish.mood = 'happy'}
  end

  def sell_pets
    @pets.each do |k, v|
      v.each{|pet| pet.mood = 'nervous'}
    end
    @pets = {:fishes => [], :cats => [], :dogs => []}
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
