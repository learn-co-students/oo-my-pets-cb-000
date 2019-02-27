class Owner

  @@all = []
  attr_accessor :pets, :name
  attr_reader :species


  def initialize(species)
    @species = species
    @pets = {}
    @pets[:dogs] = []
    @pets[:cats] = []
    @pets[:fishes] = []
    @@all << self

  end

  def say_species

    "I am a #{@species}."
      #describe "#say_species " do
      #it "can say its species" do
        #expect(owner.say_species).to eq("I am a human.")
  end

  def self.all
      @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all = []
  end

  def buy_cat(name)
    #pet = Pet.new
    #add new pet to {fishes: [], cats: [], dogs:[] }
    pet = Cat.new(name)
    @pets[:cats] << pet
    pet.owner = self
  end

  def buy_dog(name)
    #pet = Dog.new
    #add new dog to {fishes: [], cats: [], dogs:[]}
    pet = Dog.new(name)
    @pets[:dogs] << pet
    pet.owner = self
  end

  def buy_fish(name)
    #pet = Fish.new
    #add new dog to {fishes: [], cats: [], dogs:[]}
    pet = Fish.new(name)
    @pets[:fishes] << pet
    pet.owner =  self
  end

  def sell_pets
    #owner.sell_pets
    #owner.pets.each {|type, pets| expect(pets.empty?).to eq(true) }
    #[fido, tabby, nemo].each { |o| expect(o.mood).to eq("nervous") }
    setPetsToNervous
    clearPetsHash
  end

  def clearPetsHash
    @pets[:dogs].clear
    @pets[:cats].clear
    @pets[:fishes].clear
  end

  def setPetsToNervous
    @pets[:fishes].map{|x| x.mood = "nervous"}
    @pets[:dogs].map{|x| x.mood = "nervous"}
    @pets[:cats].map{|x| x.mood = "nervous"}

  end

  def list_pets
  #  describe "#list_pets" do
  #    it 'can list off its pets' do
  #      owner.buy_fish("Bubbles")
  #      owner.buy_fish("Nemo")
  #      owner.buy_cat("Crookshanks")
  #      owner.buy_dog("Fido")
  #      owner.buy_dog("Snuffles")
  #      owner.buy_dog("Charley")
  #      expect(owner.list_pets).to eq("I have 2 fish, 3 dog(s), and 1 cat(s).")
  "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog\(s\), and #{@pets[:cats].size} cat\(s\)."
  end

  def walk_dogs
    @pets[:dogs].map{|x| x.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].map{|x| x.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].map{|x| x.mood = "happy"}
  end

end
