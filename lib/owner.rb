class Owner
@@all = []
attr_reader :species
attr_accessor :name, :pets

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
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
    "I am a human."
  end

  def buy_fish(name_fish)
    fish = Fish.new(name_fish)
    @pets[:fishes] << fish
  end

  def buy_cat(name_cat)
    cat = Cat.new(name_cat)
    @pets[:cats] << cat
  end

  def buy_dog(name_dog)
    dog = Dog.new(name_dog)
    @pets[:dogs] << dog
  end

  def walk_dogs
    array_dogs_of_the_owner = @pets[:dogs]
    array_dogs_of_the_owner.each do |dog| dog.mood = "happy" end
  end

  def play_with_cats
    array_cats_of_the_owner = @pets[:cats]
    array_cats_of_the_owner.each do |cat| cat.mood = "happy" end
  end

  def feed_fish
    array_fishes_of_the_owner = @pets[:fishes]
    array_fishes_of_the_owner.each do |fish| fish.mood = "happy" end
  end

  def sell_pets
    @pets.each do |specie, pets|
      pets.each do |pet| pet.mood = "nervous" end
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
