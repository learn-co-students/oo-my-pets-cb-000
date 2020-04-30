class Owner
  attr_reader :name, :species

@@all = []

def initialize(name)
  @species = 'human'
  @name = name
  @@all << self
  # code goes here
end

def say_species
  "I am a #{self.species}."
end

def self.all
  @@all
end

def self.count
  @@all.size
end

def self.reset_all
  @@all = []
end

def cats
  Cat.all.select do |cat|
    cat.owner == self
  end
end

def dogs
  Dog.all.select do |dog|
    dog.owner == self
  end
end

def buy_cat(name)
  new_cat = Cat.new(name,self)

end

def buy_dog(name)
  new_dog = Dog.new(name,self)
end

def walk_dogs
  dogs.each do |dog|
    dog.mood = "happy"
  end
end

def feed_cats
  cats.each do |cat|
    cat.mood = "happy"
  end
end

def sell_pets
  cats.each do |cat|
    cat.mood = "nervous"
    cat.owner = nil
  end
  dogs.each do |dog|
    dog.mood = "nervous"
    dog.owner = nil
  end
end

def list_pets

 return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
end



end
