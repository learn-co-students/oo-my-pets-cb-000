class Owner
  
  attr_accessor :pets, :name
  
  @@all = []
  @@count = 0
  
  def initialize(type)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self if type == "human"
    @@count += 1 if type =="human"
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@count = 0
  end
  
  def self.count
    @@count
  end
  
  def species
    "human"
  end
  
  def say_species
    "I am a human."
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << (new_fish)
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << (new_cat)
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << (new_dog)
  end
  
  def walk_dogs
    @pets[:dogs][0].mood = "happy"
  end
  
  def play_with_cats
    @pets[:cats][0].mood = "happy"
  end
  
  def feed_fish
    @pets[:fishes][0].mood = "happy"
  end
  
  def sell_pets
    
    @pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end
    
    @pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
    
    @pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end

    @pets[:fishes] = []
    @pets[:cats] = []
    @pets[:dogs] = []
  end
  
  def list_pets
    fishes = 0
    @pets[:fishes].each do |fish|
      fishes += 1
    end
    cats = 0
    @pets[:cats].each do |cat|
      cats += 1
    end
    dogs = 0
    @pets[:dogs].each do |dog|
      dogs += 1
    end
    
    "I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end
  
  
  
end