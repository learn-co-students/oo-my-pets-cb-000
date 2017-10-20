class Owner
  attr_accessor :name, :pets, :fish
  attr_reader :species

  @@all = []

  def initialize(name, species = "human", pets = {"fishes":[], "dogs":[], "cats":[]})
    @name = name
    @species = species
    @pets = pets
    self.class.all.push(self)
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    i = 0
    @@all.each do |owner|
      i += 1
    end
    i
  end

  def say_species
    return "I am a human."
  end

  def fish_check(name)
    check = self.pets[:fishes]
    if check.include?(name)
      return true
    else
      return false
    end
  end

  def fishing(name)
    fish = Fish.new(name)
    self.pets[:fishes].push(fish)
  end


  def buy_fish(name)
    fish_check(name) || fishing(name)
  end

  def cat_check(name)
    check = self.pets[:cats]
    if check.include?(name)
      return true
    else
      return false
    end
  end

  def cating(name)
    cat = Cat.new(name)
    self.pets[:cats].push(cat)
  end


  def buy_cat(name)
    cat_check(name) || cating(name)
  end

  def dog_check(name)
    check = self.pets[:dogs]
    if check.include?(name)
      return true
    else
      return false
    end
  end

  def dogging(name)
    dog = Dog.new(name)
    self.pets[:dogs].push(dog)
  end


  def buy_dog(name)
    dog_check(name) || dogging(name)
  end


  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each do |x|
        x.mood = "nervous"
      end
    end
    pets.clear
  end

  def list_pets
    return "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end

end
