class Owner

@@all = []

attr_accessor :pets, :name
attr_reader :species

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
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
    pets[:fishes] = []
    pets[:dogs] = []
    pets[:cats] = []
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

    def list_pets
      fish_count = self.pets[:fishes].count
      dog_count = self.pets[:dogs].count
      cat_count = self.pets[:cats].count

      # if dog_count > 1
      #   dog_p = "dogs"
      # else dog_p = "dog"
      # end
      #
      # if cat_count > 1
      #   cat_p = "cats"
      # else cat_p = "cat"
      # end

      "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
    end

end
