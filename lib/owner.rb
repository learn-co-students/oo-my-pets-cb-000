class Owner
  attr_accessor :name, :species, :pets

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    sample_pets = [:fishes, :cats, :dogs]
    @pets = sample_pets.map{|pet|[pet, []]}.to_h
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    self.pets[:fishes] << fish
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    self.pets[:cats] << cat
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets.each do |k,v|
      v.map do |pet|
        pet.mood = "happy"
      end
   end
end

  def play_with_cats
    self.pets.each do |k,v|
      v.map do |pet|
        pet.mood = "happy"
      end
   end
end

  def feed_fish
    self.pets.each do |k,v|
      v.map do |pet|
        pet.mood = "happy"
      end
   end
end

  def sell_pets
    self.pets.each do |k,v|
      v.map do |pet|
        pet.mood = "nervous"
    end
      v.clear
    end
  end

  def list_pets
     "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
   end


  private
  def species=(species)
    @species
  end

end
