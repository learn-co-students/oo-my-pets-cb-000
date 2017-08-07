require 'pry'
class Pet
   # belongs to owner
   attr_reader :owner, :name
   attr_writer 

  def initialize(name)
    @name=name
    self.distress
  end

  def mood= (mood)
    @mood = mood
  end

  def mood
    @mood
  end

  def happify
    @mood = 'happy'
  end

  def make_playful 
    @mood='playful'
  end

  def excite 
    @mood = 'excited'
  end

  def distress 
    @mood = 'nervous'
  end
end
