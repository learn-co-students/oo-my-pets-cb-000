class Owner
  # code goes here
  attr_accessor(:name,:pets)
  attr_reader(:species)
  @@all = []

  def initialize(specie)
    @species=specie
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all=[]
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish=Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat=Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog=Dog.new(name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood="happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood="happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood="happy"
    end
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each do |pet|
        pet.mood="nervous"
      end
      self.pets[type] = []
    end
  end

  def list_pets
    fish_count=self.pets[:fishes].length
    cat_count=self.pets[:cats].length
    dog_count=self.pets[:dogs].length
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end
