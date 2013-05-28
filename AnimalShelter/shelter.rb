

 class Shelter
 	attr_accessor :animals, :clients
 	  def initialize(name)
 	  	@animals = []
 	  	@clients = []

 	  end



  def add_animal(animal)
    @animals.push(animal)
  end

  def drop_animal(animal)
  	@animals.delete(animal)
  end

 end