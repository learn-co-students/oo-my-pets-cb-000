require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species
#///Class Methods///
  @@all = [] #=> Keeps track of all instances of Owner.
  @@count = 0 #=> Keeps track of the nubmer of created Owners.

  def self.all #=> Returns an array of all owners.
    @@all
  end

  def self.count #=> Returns the number of owners created.
    @@count
  end

  def self.reset_all #=> Resets our list & count of Owners.
    @@all.clear
    @@count = 0
  end

#///Instance Methods///
  def initialize(name)
    @name = name
    @pets = {        #=> Holds all the types of animals owner has in a hash.
      :fishes => [],
      :dogs => [],
      :cats => []
    }
    @@all << self  #=> Adds this instance of owner to Ower.all array.
    @@count +=1 #=> Adds 1 to our count of all owners.
    @species = "human"
  end

  def say_species  #=> Calls the species of the owner.
    "I am a #{@species}."
  end

  def buy_fish(pets_name)
    new_fish = Fish.new(pets_name) #=> Creates a new Fish.
    @pets[:fishes] << new_fish #=> Adds fish to our @pets hash.
  end

  def buy_cat(pets_name)
    new_cat = Cat.new(pets_name) #=> Creates a new Cat
    @pets[:cats] << new_cat  #=> Adds Cat to our @pets hash.
  end

  def buy_dog(pets_name)
    new_dog = Dog.new(pets_name) #=> Creates a new Dog
    @pets[:dogs] << new_dog #=> Adds Dog to our @pets hash.
  end

  def walk_dogs #=> Iterates over @pets hash and sets each dog's mood to happy.
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats #=> Iterates over @pets hash and sets each cat's mood to happy.
    @pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def feed_fish #=> Iterates over @pets hash and sets each fish's mood to happy.
    @pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |species, animal| #=> #=> Iterates over @pets hash and sets all animals to nervous.
      animal.each do |a|
        a.mood = "nervous"
      end
      animal.clear #=> clears this owners @pets hash.
    end
  end

  def list_pets #=> List all pets an instance of an owner owns.
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
