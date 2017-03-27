class Owner
  attr_accessor  :name , :pets 
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
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def species
    @species.dup.freeze 
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    @pets[:fishes] << fish if !@pets[:fishes].include?(fish)
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    @pets[:cats] << cat if !@pets[:cats].include?(cat) 
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    @pets[:dogs] << dog if !@pets[:dogs].include?(dog) 
  end


  def walk_dogs
    @pets[:dogs].each {|d| d.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|c| c.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|f| f.mood = "happy"}
  end

  def sell_pets
    @pets.each do |type, pets|
      pets.each {|p| p.mood = "nervous"}
      pets.clear 
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
  
end
