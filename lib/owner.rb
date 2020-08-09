require 'pry'

class Owner

  attr_reader :name, :species, :say_species

  @@owners = []

  def initialize(name)
    @name = name
    @species = "human"
    @say_species = "I am a human."
    @@owners << self
  end

def self.all
  @@owners
  # binding.pry

end

def self.count
  @@owners.count
end

def self.reset_all
  @@owners.clear
end

def cats
  Cat.all.select do |cats|
    cats.owner == self
    end
end

def dogs
  Dog.all.select {|dogs| dogs.owner == self}
end

# def buy_cat(name)
#   new_owner = Cat.all.find {|cat| cat.name == name}
#   new_owner.owner = self if new_owner
# end

def buy_cat(name)
    Cat.new(name, self)
  end

def buy_dog(name)
  Dog.new(name, self)

end

def walk_dogs
  self.dogs.select {|dog| dog.mood = "happy"}
end

def feed_cats
  self.cats.select {|cat| cat.mood = "happy"}

end

def sell_pets
  self.dogs.select {|dog| dog.mood = "nervous"}
  self.cats.select {|cat| cat.mood = "nervous"}
  self.dogs.select {|dog| dog.owner = nil}
  self.cats.select {|cat| cat.owner = nil }
end

def list_pets
  "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
end

end
