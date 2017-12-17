class Owner
  attr_accessor :name, :pets
  # can't change its species
  attr_reader :species

  OWNERS = []

  # keeps track of the owners that have been created
  def self.all
    OWNERS
  end

  # can count how many owners have been created
  def self.count
    OWNERS.size
  end

  # can reset the owners that have been created
  def self.reset_all
    OWNERS.clear
  end

  # can initialize an owner
  # initializes with a species
  def initialize (species)
    @species = species
    OWNERS << self
  end

  # can say its species
  def say_species
  end
end
