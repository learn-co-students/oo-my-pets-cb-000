class Dog
  attr_read :name
  attr_accessor :owner

  def initialize(name, owner)
    @name = name
    @owner = owner
  end
end
