class Owner

  OWNERS = []

  attr_accessor :name, :pets
  attr_reader :species

  def self.all
    OWNERS
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

  def initialize(species)
    @species = species
    OWNERS << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def walk_dogs
      pets[:dogs].each { |dog| dog.mood ="happy" }
    end

    def play_with_cats
      pets[:cats].each { |cat| cat.mood = "happy" }
    end

    def feed_fish
      pets[:fishes].each { |fish| fish.mood = "happy" }
    end


  def sell_pets
    pets.each do |animals, pet|
      pet.each do |p|
        p.mood = "nervous"
      end
      pet.clear
    end
  end

  def say_species
    "I am a #{species}."
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
