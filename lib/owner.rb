class Owner
  attr_reader :species, :name
  attr_accessor :pets 
  
  @@all = []
  
  def initialize(species)
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
  end
  
  def self.all()
    @@all
  end
  
  def self.count()
    @@all.count
  end
  
  def self.reset_all()
    @@all = []
  end
  
  def say_species()
    return "I am a #{@species}."
  end
  
  def name=(name)
    @name = name
  end
  
  def buy_fish(name)
    pet_fish = Fish.new(name)
    @pets[:fishes] << pet_fish
  end
  
  def buy_cat(name)
    pet_cat = Cat.new(name)
    @pets[:cats] << pet_cat
  end
  
  def buy_dog(name)
    pet_dog = Dog.new(name)
    @pets[:dogs] << pet_dog
  end
  
  def walk_dogs()
    @pets[:dogs].each do |d|
      d.mood = "happy"
    end
  end
  
  def play_with_cats()
    @pets[:cats].each do |c|
      c.mood = "happy"
    end
  end
  
  def feed_fish()
    @pets[:fishes].each do |f|
      f.mood = "happy"
    end
  end
  
  def sell_pets()
    @pets.each do |type, array|
      array.each do |x|
        x.mood = "nervous"
      end
      array.clear()
    end
  end
  
  def list_pets()
    return "I have #{@pets[:fishes].count()} fish, #{@pets[:dogs].count()} dog(s), and #{@pets[:cats].count()} cat(s)."
  end
end