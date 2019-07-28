class Owner
  # code goes here

  attr_reader :species

  attr_accessor :name, :pets, :cat, :dog

  @@all = []

  @@pets = {:cats => [], :dogs => []}

  def initialize (species)

    @species = species
    @name = name
    @all << self

  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

  def say_species

    "I am a #{species}."
  end

  def buy_fish

end
