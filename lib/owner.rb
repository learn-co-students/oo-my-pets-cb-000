class Owner
  @@all = []
  
  attr_accessor :name, :pets, :fishes, :dogs, :cats
  attr_reader :species

  def initialize(name = nil, species)
    @species = species
    @name = name
    @@all << self
    @pets = {}
      @pets[:fishes] = []
      @pets[:dogs] = []
      @pets[:cats] = []

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
    @pets[:dogs].each{|dog_instance| dog_instance.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each{|cat_instance| cat_instance.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each{|fish_instance| fish_instance.mood = "happy"}
  end

  def sell_pets
    @pets[:dogs].each{|dog_instance| dog_instance.mood = "nervous"}
    @pets[:cats].each{|cat_instance| cat_instance.mood = "nervous"}
    @pets[:fishes].each{|fish_instance| fish_instance.mood = "nervous"}
    @pets[:fishes] = []
    @pets[:cats] = []
    @pets[:dogs] = []
  end

  def list_pets
    dog_count = 0
    cat_count = 0
    fish_count = 0
    @pets[:dogs].each{|dog_instance| dog_count += 1}
    @pets[:cats].each{|cat_instance| cat_count += 1}
    @pets[:fishes].each{|fish_instance| fish_count +=1}
    return "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

  def say_species
    return "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.count
  end



end
