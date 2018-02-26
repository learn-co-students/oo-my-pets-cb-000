class Owner

    attr_accessor :pets, :name
    attr_writer
    attr_reader :species

    @@owners = []

    def initialize(species)
      @species = species
      @@owners << self
      @pets = {fishes: [], cats: [], dogs: []}
    end

    def self.all
      @@owners
    end

    def self.reset_all
      @@owners.clear
    end

    def self.count
      @@owners.count
    end

    def say_species
      "I am a #{self.species}."
    end

    def buy_fish(name)
      fish = Fish.new(name)
      @pets[:fishes] << fish
    end

    def buy_cat(name)
      cat = Cat.new(name)
      @pets[:cats] << cat
    end

    def buy_dog(name)
      dog = Dog.new(name)
      @pets[:dogs] << dog
    end

    def walk_dogs
      @pets[:dogs].each {|dog| dog.mood = "happy"}
    end

    def play_with_cats
      @pets[:cats].each {|cat| cat.mood = "happy"}
    end

    def feed_fish
      @pets[:fishes].each {|fish| fish.mood = "happy"}
    end

    def sell_pets
      @pets.each do |type, pets|
          pets.each {|pet| pet.mood = "nervous"}
      end
      @pets = {fishes: [], cats: [], dogs: []}
    end

    def list_pets
      "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
    end

end
