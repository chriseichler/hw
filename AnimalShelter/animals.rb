
class Animals
  attr_accessor :names, :breed, :age, :gender, :toys
  
  # include Enumerable
  @@count = 0

  def initialize(name = 'x', breed = 'x', age = 'x', gender = 'x', toys = 'x')
    # @animals = []
    @names = name
    @breed = breed
    @age = age
    @gender = gender
    @toys = toys
    @owner = owner

    @@count += 1
  end

  def self.count
    @@count
  end
  def animal_info
    puts "Names: #{names}"
    puts "breed: #{breed}"
    puts "age: #{age}"
    puts "gender: #{gender}"
    puts "toys: #{toys}"
  end

  def to_s
    puts `clear`
    "#{@name}, the #{@breed}, is #{@age} year's old and loves to play with #{@toy}'s.".color(:cyan)
  end


  def list_animals(animals)
    @animals.each { |a| p a.name}
  end

end
#   def self_a
#     ObjectSpace.each_object(Project).count
#   end

#   def self.count
#     all.count
#   end
# end

# puts self.count



# animal1 = Animals.new("Fido", "terrier", 9, "male", "balls")
# animal2 = Animals.new("Sue", "goldfish", 1, "female", "cups")
# animal3 = Animals.new("Whiskers", "Tabby", 5, "male", "strings")
# animal4 = Animals.new("Tommy", "St Bernard", 8, "male", "terriers")
# animal5 = Animals.new("Fuzzy", "Maine Coon Cat", 3, "female", "furniture")
