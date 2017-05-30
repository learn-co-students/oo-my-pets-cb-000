class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  @@count = 0

  def initialize(species)
    @species = species
    @@count += 1
    @pets = {:fishes => [], :dogs => [], :cats =>[]}
    @@all << self
  end

  def self.reset_all
    @@all.clear
    @@count = 0
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    @pets.collect do |x,y|
      if x == :fishes
        y << fish
      end
    end
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    @pets.collect do |x,y|
      if x == :cats
        y << cat
      end
    end
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    @pets.collect do |x,y|
      if x == :dogs
        y << dog
      end
    end
  end

  def walk_dogs
    count = 0
    self.pets.collect do |x,y|
      if x == :dogs
        self.pets[x][count].mood = "happy"
        count += 1 # this ensures that if owner has more than one dog all dogs' moods will be set to happy
      end
    end
  end

  def play_with_cats
    count = 0
    self.pets.collect do |x,y|
      if x == :cats
        self.pets[x][count].mood = "happy"
        count += 1 # this ensures that if owner has more than one cat all cats' moods will be set to happy
      end
    end
  end

  def feed_fish
    count = 0
    self.pets.collect do |x,y|
      if x == :fishes
        self.pets[x][count].mood = "happy"
        count += 1 # this ensures that if owner has more than one fish all fish's moods will be set to happy
      end
    end
  end

  def sell_pets
    self.pets.collect do |x,y|
      count = 0
      y.collect do |pet|
        self.pets[x][count].mood = "nervous"
        count += 1
      end
    end
    self.pets.clear
  end

  def list_pets
    return "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end

end
