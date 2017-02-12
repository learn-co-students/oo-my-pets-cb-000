require "pry"

class Owner
  
	attr_reader :species
	attr_accessor :pets, :name

	@@count = 0
	@@all = []


   def initialize(species)
 	@species = species
 	@@count += 1
 	@@all << self
 	@pets = { :dogs => [], :cats => [], :fishes => [] }
   end

   def self.count
   	@@count
   end

   def self.all
   	@@all
   end

   def self.reset_all
   	@@count = 0
   	@@all = []
   end

   def say_species
   	"I am a #{@species}."
   end

   def name=(name)
   	@name = name
   end

   def buy_fish(name)
   	@pets[:fishes] << Fish.new(name)
   end

   def buy_cat(name)
   	@pets[:cats] << Cat.new(name)
   end

   def buy_dog(name)
   	@pets[:dogs] << Dog.new(name)
   end

   def walk_dogs
   	@pets[:dogs].each do |dog|
   		dog.mood = "happy"
   	end
   end

   def play_with_cats
   	@pets[:cats].each do |cat|
   		cat.mood = "happy"
   	end
   end

   def feed_fish
   	@pets[:fishes].each do |fish|
   		fish.mood = "happy"
   	end
   end

   def sell_pets
   	@pets.each do |type, pet|
   		i = 0
   		while(i < pet.length)
   			pet[i].mood = "nervous"
   			i += 1
   		end
   		pet
   	end
   	@pets = []
   end

   def list_pets
   	"I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
   end

end