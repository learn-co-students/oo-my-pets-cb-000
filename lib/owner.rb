class Owner
  # code goes here
  
  attr_accessor :pets, :name
  attr_reader :species
  
  @@all = []
  
  def initialize(species)
    @species = species
    @pets = {:fishes => [], :cats => [], :dogs => [] }
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    all.count
  end
  
  def self.reset_all
    @@all = []
  end
  
  def say_species 
    "I am a #{species}."
  end
  
  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    pets[:fishes] << fish
  end
  
  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    pets[:cats] << cat
  end
  
  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    pets[:dogs] << dog
  end
  
  def feed_fish
     pets[:fishes].each do |x|
      x.mood = "happy"
    end
  end
  
  def play_with_cats
    pets[:cats].each do |x|
      x.mood = "happy"
    end
  end
  
  def walk_dogs
     pets[:dogs].each do |x|
      x.mood = "happy"
    end
  end
  
  def sell_pets
    pets.each  do |type, animals|
      animals.each do |x|
        x.mood = "nervous"
      end
      animals.clear
    end
  end
  
  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].length} cat(s)."
  end
  
end