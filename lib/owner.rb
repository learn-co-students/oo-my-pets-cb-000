class Owner
  attr_accessor :pets, :name
  @@all = []
 def initialize(name = "human")
   @name = name
   @pets = {:fishes => [], :dogs => [], :cats => []}
   @@all << self
end
 def self.all
   @@all
 end
 def self.reset_all
   @@all = []
 end
 def self.count
   @@all.length
 end
 def species
   if self.name == "human"
     return "human"
   else
     return "NoMethodError"
   end
 end
 def say_species
   if self.name == "human"
     return "I am a human."
   end
 end
 def buy_fish(name)
   fish = Fish.new(name)
   self.pets[:fishes] << fish
   fish
 end
 def buy_cat(name)
   cat = Cat.new(name)
   self.pets[:cats] << cat
   cat
 end
 def buy_dog(name)
   dog = Dog.new(name)
   self.pets[:dogs] << dog
   dog
 end
 def walk_dogs
   self.pets[:dogs].each do|dog|
   dog.mood = "happy"
   end
 end
 def play_with_cats
   self.pets[:cats].each do|cat|
   cat.mood = "happy"
   end
 end
 def feed_fish
   self.pets[:fishes].each do|fish|
   fish.mood = "happy"
   end
 end
 def sell_pets
   self.pets.each do| types,pets|
     pets.each do|pet|
       pet.mood = "nervous"
     end
   end
   @pets = {:fishes => [], :dogs => [], :cats => []}
 end
 def list_pets
   return "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
 end
end
