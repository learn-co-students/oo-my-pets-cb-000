class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
  	@species = species
  	self.add_owner
  	pets = { :fishes => [], :dogs =>[], :cats =>[]}
  	@pets = pets
  end

  def add_owner
  	@@all << self
  	@@all
  end

  def self.all 
  	@@all
  end

  def self.reset_all	
  	@@all.each do |owner|
  		@@all.delete_at(@@all.index(owner))
  	end
   end

	def self.count
		@@all.count
	end

	def say_species
		return "I am a " + @species + "."
	end

	def buy_fish(fish_name)
		new_fish = Fish.new(fish_name)
		pets[:fishes].push(new_fish)
	end

	def buy_cat(cat_name)
		new_cat = Cat.new(cat_name)
		pets[:cats].push(new_cat)
	end

	def buy_dog(dog_name)
		new_dog = Dog.new(dog_name)
		pets[:dogs].push(new_dog)
	end

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

	def sell_pets
		pets[:dogs].each do |dog|
			dog.mood = "nervous"
		end
		pets[:cats].each do |cat|
			cat.mood = "nervous"
		end
		pets[:fishes].each do |fish|
			fish.mood = "nervous"
		end
		pets.each do |key, array|
  			 pets.delete(key)
  			 array.each do |pet|
  			 	array.delete_at(array.index(pet))
  			 end
		end
	end

	def list_pets
		#count each pet
		 "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
	end
end