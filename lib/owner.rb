require"pry"

class Owner
attr_accessor :pets
attr_accessor :name
attr_reader :species

@@all =[]




def initialize (name)
  @name = name
  @@all << self
  @species = "human"
  @pets ={ fishes:[],dogs:[],cats:[]}
  @counts =[]

end

## all Class methods
def self.all
  @@all
end

def self.reset_all
  @@all.clear
end

def self.count
  @@all.count
end

## all instance methods



def say_species
  speak=  "I am a #{@species}."
  return speak
end

def pets
  @pets
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
  @pets[:dogs].each {|dog| dog.mood= "happy" }
end


def play_with_cats
  @pets[:cats].each {|cat| cat.mood= "happy" }
end


def feed_fish
  @pets[:fishes].each {|fish| fish.mood= "happy" }
end


def sell_pets
@pets.each do |key,value|
 value.each {|item| item.mood= "nervous" }
end

@pets.clear

end

def list_pets

return "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."

end





end
