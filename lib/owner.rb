class Owner
  # code goes here
  attr_accessor :name
  @pets = {fishes: [], cats: [], dogs: []}
  @@owners = []

  def initialize(name)
    @name = name
    @@owners << self
  end

  def self.reset_all
    @@owners = []
  end

  def self.count
    @@owners.size
  end

  def self.all
    @@owners
  end

end
