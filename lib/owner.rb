class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []
  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    # puts "************#{@pets}|| "
    # @pets.each {|key,val| puts "*****#{key}||#{val}"}
  end #initialize
#****************************************************************class self
  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a #{species}."
  end
#*****************************************************************buy pets
# takes in an argument of a name.
# Make a new instance of the appropriate pet, initializing it with that name.
# Associate that new pet instance to the owner by adding it to the appropriate
#   array-value of the @pets hash stored in the pets attr_accessor.
  def buy_fish(name)
    # newfish = Fish.new(name)
    @pets[:fishes] << Fish.new(name)
    #   # puts "newfish:#{newfish}||@pets['fishes']:#{@pets['fishes']}||"  #{@pets[fishes]}
    #   # @pets["fishes"] << newfish
    #   # 1.9.3p194 :008 > hash1 = array1.find { |h| h['age'] == "30" }
    # pets_fish_array = @pets.find {|key,val| key = "fishes"}
    # pets_fish_array[1] << newfish
    #   # puts "#{pets_fish_array}***#{pets_fish_array[1]}************************"
    #   # puts "#{@pets}"
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
    # newcat = Cats.new(name)
    # pets_cats_array = @pets.find {|key,val| key="cats"}
    # # pets_cats_array[1] << Cats.new(name)
    # pets_cats_array[1] << newcat
  end

  def buy_cat(name)
    # newcat = Cat.new(name)
    # @pets[:cats] << newcat
    @pets[:cats] << Cat.new(name)
    # pets_cats_array = @pets.find {|key,val| key="cats"}
    # pets_cats_array[2] << Cat.new(name)
    # puts "#{@pets}"
    # puts "#{pets_cats_array}"
    # puts "#{@pets[:cats]}"
  end

  def sell_pets
    # @pets.each {|pet_species,value| pet_species.each {|pet| puts "#{pet}" } }
    @pets.each do |key,value|
      # puts "#{key}||#{@pets[key]}"
      @pets[key].each do |pet|
        pet.mood="nervous"
      end
      @pets[key].clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
# ******************************************************************play feed
# When an owner plays with a cat or feeds a fish or walks a dog, that pet will get happier.
#  Remember that the pets method stores all of an owners pets.
#   The @pets hash stored in that method is full of instances of the Cat/Dog/Fish class.
#   That means you can call Cat/Dog/Fish instance methods (such as .mood=) on those pets.
  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}  #puts "#{dog}"
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood="happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood="happy"}
  end
end # class
