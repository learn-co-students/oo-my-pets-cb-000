class Owner
  attr_reader :species
  attr_accessor :name, :pets
  @@all = []
  @@count = 0
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @@count += 1
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def self.count
    return @@count
  end
  
  def self.all
    return @@all
  end
  
  def self.reset_all
    @@all.clear
    @@count = 0
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end
  
  def walk_dogs
    @pets[:dogs].each do |dog_instance|
      dog_instance.mood = "happy"
    end
  end
  
  def play_with_cats
    @pets[:cats].each do |cat_instance|
      cat_instance.mood = "happy"
    end
  end
  
  def feed_fish
    @pets[:fishes].each do |fish_instance|
      fish_instance.mood = "happy"
    end
  end
  
  def sell_pets
    @pets.each do |key, value|
      @pets[key].each do |pet_instance|
        pet_instance.mood = "nervous"
      end
      @pets[key] = []
    end
  end
  
  def list_pets
    number_of_fishes = @pets[:fishes].length
    number_of_dogs = @pets[:dogs].length
    number_of_cats = @pets[:cats].length
    return "I have #{number_of_fishes} fish, #{number_of_dogs} dog(s), and #{number_of_cats} cat(s)."
  end
end






















