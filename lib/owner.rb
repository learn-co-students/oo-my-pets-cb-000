require 'pry'

class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species

  @@all=[]

  def self.all
    @@all
  end

  def initialize(species) #="human")
    @species=species
    #@name=name

    @pets= {fishes: [], cats: [], dogs: []}

    #self.all.class<<self
    @@all<<self
  end

  def self.count
    @@all.length
    #self.class.all.length   #self.all.length
  end

  def self.reset_all
    @@all.clear
    #self.class.all.clear   #self.all.clear
  end

  #def species(species)
    ##new_owner=self.new(name)
    #@species=species
  #end

  def say_species
    "I am a #{@species}."
    #puts "I am a #{@species}."
  end

  #def pets
    #@pets= {fishes: [], cats: [], dogs: []}
  #end

  def buy_cat(name)
    new_cat=Cat.new(name)
    @pets[:cats]<<new_cat  #@pets[cats]<<new_cat
    #@pets[:cats].push(new_cat)
    
  end

  def buy_dog(name)
    new_dog=Dog.new(name)
    @pets[:dogs]<<new_dog  #@pets[dogs]<<new_dog
  end

  def buy_fish(name)
    new_fish=Fish.new(name)
    @pets[:fishes]<<new_fish  #@pets[fishes]<<new_fish

    #self.pets[:fishes]<<new_fish

    #@pets[:fishes]=new_fish

    #binding.pry

    ##@pets[:fishes]<<Fish.new(name)
  end

  def walk_dogs
    @pets[:dogs].each {|animal| animal.mood="happy"}
    #@pets{:dogs}.mood="happy"
    #@pets{:dogs}[0].mood="happy"
  end

  def play_with_cats
    @pets[:cats].each {|animal| animal.mood="happy"}
    #@pets{:cats}.mood="happy"
    #@pets{:cats}[0].mood="happy"
  end

  def feed_fish
    @pets[:fishes].each {|animal| animal.mood="happy"}
    #@pets{:fishes}.mood="happy"
    #@pets{:fishes}[0].mood="happy"
  end

  def sell_pets
    @pets[:dogs].each {|animal| animal.mood="nervous"}
    @pets[:cats].each {|animal| animal.mood="nervous"}
    @pets[:fishes].each {|animal| animal.mood="nervous"}
    #@pets[:dogs].mood="nervous"
    #@pets[:cats].mood="nervous"
    #@pets[:fishes].mood="nervous"

    @pets.each do |animal, animal_array|
      animal_array.clear
    end

    #@pets[:dogs].each {|animal_array| animal_array.clear}
    #@pets[:cats].each {|animal_array| animal_array.clear}
    #@pets[:fishes].each {|animal_array| animal_array.clear}

  end

  def list_pets
    number_fish=@pets[:fishes].length
    number_dogs=@pets[:dogs].length
    number_cats=@pets[:cats].length

    "I have #{number_fish} fish, #{number_dogs} dog(s), and #{number_cats} cat(s)."
    #puts "I have #{number_fish} fish, #{number_dogs} dog(s), and #{number_cats} cat(s)."

    #number_fish=0
    #number_dogs=0
    #number_cats=0

    #@pets.each do |animal,animal_array|
      #if animal==:fishes  #"fish"
        #number_fish=animal_array.length
      #elsif animal==:dogs #"dogs"
        #number_dogs=animal_array.length
      #elsif animal==:cats #"cats"
        #number_cats=animal_array.length
      #end
    #end


  end

end
