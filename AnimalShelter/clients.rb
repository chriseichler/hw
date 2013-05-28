class Clients
  attr_accessor :name, :age, :gender, :kids, :pets

  def initialize(name, age, gender, kids, pets)
    @name = name
    @age = age
    @gender = gender
    @kids = kids
    @pets = []
  end

  def people_info
    puts "Name: #{name}"
    puts "Age: #{age}"
    puts "gender: #{gender}"
    puts "kids: #{kids}"
    puts "pets: #{pets}"
  end

  def add_pet(animal)
    @animals.push(animal)
  end

  def drop_pet(animal)
    @animals.delete(animal)
  end

  def drop_animal(animal)
    if !animals.include? animal
      puts "Is this your animal to give us?"
    else
      self.drop_animal(animal)
      puts "Thank you for the animal!"
    end

  # def adopt_animal(animal)
  #   unless shelter.animals.include? animal
  #     p "That animal is not in the shelter right now"
  #   else
  #     shelter.drop_animal(animal)
  #     self.add_pet(animal)
  #     
  end
end









# client1 = Client.new("John", "50", "male", 4, 2)
# client1 = Client.new("Sarah", "40", "female", 2, 3)