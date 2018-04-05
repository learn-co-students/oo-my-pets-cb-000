class Owner
  attr_accessor :name, :counter, :count

  @@all = []
  @@counter = 0

  def initialize(name)
    @name = name
    @@all << self
    count
  end

  def self.count
    @@counter += 1
  end

  def self.reset_all
    @@all.clear
    @@counter = 0
  end

  def self.all
    @@all
  end

end
