class Owner

attr_reader :name, :species

@@all = [] 

def initialize(name, species="human")
  @name = name
  @species = species 
  @@all << self 
end

def say_species
  "I am a #{species}."  
end 

def self.all 
  @@all
end 

def self.count 
  self.all.count 
end 

def self.reset_all 
  @@all = [] 
end 

def cats 
  Cat.all.select {|c| c.owner == self}
end 

def dogs 
  Dog.all.select {|d| d.owner == self}
end 

def buy_cat(cats_name)
  #create cat instance 
  #initialize it with the cat's name and the owner purchasing it
  Cat.new(cats_name, self) 
end 

end 