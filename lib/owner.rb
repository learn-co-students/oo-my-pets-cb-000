#An owner will know about all its pets, be able to buy a pet, set the name of a 
#pet (which the pet can't change, because that would be weird), change a pet's 
#mood through walking, feeding, or playing with it, and sell all of its pets 


class Owner
  attr_accessor :pets, :name

  attr_reader :species

  @@all = [ ]

  #The attr_reader for species as well as the initialize method causes the owner
  #object to be initialized with a species and cannot change its species
  #pets method is initialized with a pets attribute as a hash with 3 keys
  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  #The class method .all keeps track of the owners that have been created
  def self.all
    @@all
  end

  #the class method .reset_all can reset the owners that have been created
  def self.reset_all
    @@all.clear
  end

  #the class method .count can count how many owners have been created
  def self.count
    @@all.count
  end

  #say_species method lets object say its species
  def say_species
    "I am a #{species}."
  end 

  #can buy a fish that is an instance of the Fish class and knows about its fishes
  #by storing them in the :fishes array that is listed in the @pets method
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end 

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end 

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  #The walk_dogs method walks each dog and changes their mood to "happy"
  def walk_dogs
    pets[:dogs].each do |dog|
        dog.mood = "happy"
    end
  end 

  def play_with_cats
    pets[:cats].each do |cat|
        cat.mood = "happy"
    end
  end 

  def feed_fish
    pets[:fishes].each do |fish|
        fish.mood = "happy"
    end
  end 

  #the sell_pets method changes each animal's mood back to "nervous" and sells 
  #them by calling .clear on the animals arbitrary variable
  def sell_pets
    pets.each do |species, animals|
        animals.each do |animal|
          animal.mood = "nervous"
        end
        animals.clear
    end
  end
  

  #The list_pets method can list off its pets. We break down the hash of arrays into
  #individual arrays of pets[:fishes] etc and then call the .count method.
  #Note that they did not ask you to puts or print this. Just list it. 
  def list_pets

    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  
  end 
end