require_relative 'fish.rb'
require_relative 'dog.rb'
require_relative 'cat.rb'

class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
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

  def say_species
    say_species = "I am a #{@species}."
    say_species
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
    @pets
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
    @pets
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
    @pets
  end

  def walk_dogs
    @pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].map do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].map do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each_value do |pet_type|
      pet_type.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    fish = @pets[:fishes].count
    dogs = @pets[:dogs].count
    cats = @pets[:cats].count
    list_pets = "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
    list_pets
  end

end




owner = Owner.new("human")
fido = Dog.new("Fido")
tabby = Cat.new("Tabby")
nemo = Fish.new("Nemo")
[fido, tabby, nemo].each {|o| o.mood = "happy" }
owner.pets = {
  :dogs => [fido, Dog.new("Daisy")],
  :fishes => [nemo],
  :cats => [Cat.new("Mittens"), tabby]
}
puts owner.pets
owner.sell_pets
puts owner.pets



# owner = Owner.new("human")
# puts owner.pets[:fishes].count
# owner.buy_fish("Bubbles")
# owner.buy_dog("Hambone")
# owner.buy_cat("Ratatat")
# owner.buy_fish("Tank")
# owner.buy_dog("Frank")
# owner.buy_cat("Meows")
# puts owner.pets
# owner.sell_pets
