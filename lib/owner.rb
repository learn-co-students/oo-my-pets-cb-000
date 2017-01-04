class Owner

  attr_accessor :pets, :name
  attr_reader  :species
  @@owners=[]


  def initialize(species)
    @pets= {:fishes => [],
            :cats => [],
            :dogs => []}
    @@owners << self
    @species = species
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.length
  end


  def say_species
    "I am a #{species}."

  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes]<<fish
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
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
      @pets.each do |type, arrays| #iterate through the first key and value. The value are several arrays
         arrays.each do | pet_object | #iterate through the objects
           pet_object.mood = "nervous" #set the string method
         end
      end
      @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end


end
