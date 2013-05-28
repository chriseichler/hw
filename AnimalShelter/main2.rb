
require_relative 'animals'
require_relative 'clients'
require_relative 'shelter'
require 'rainbow'

def interface
puts "Would you like to list all the animals in the shelter?"
  answ = gets.chomp.to_s.downcase
  if answ == "no"
  	print "OK, alright."
  elsif answ == "yes"
    animals.list_animals
  else
  	puts "Please answer yes or no."
  end

puts "Would you like to know how many animals we currently have?"
  answ = gets.chomp.to_s.downcase
	if answ == "no"
		print "OK, alright."
	elsif answ == "yes"
		print Shelter.animals.length

  else
  	puts "Please answer yes or no."
  end
end

interface

def addclient
puts "Do you have a new client to enter??"
	answ = gets.chomp.to_s.downcase
	  if answ == "yes"
	  	puts "Please enter client name."
			  name = gets.chomp.to_s

			puts "Please enter client age."
			  age = gets.chomp.to_s

			puts "Please enter client gender."
			  gender = gets.chomp.to_s

			puts "Please enter client's number of children."
			  kids = gets.chomp.to_s

			puts "Please enter client's number of pets."
			  petsnum = gets.chomp.to_s
			  Shelter.add_client
			end
			if answ == "no"
				print "Ok"
			end


end
addclient

def addanimal
puts "Would you like to enter an animal for adoption?"
  answ = gets.chomp.to_s.downcase
  if answ == "yes"
  	puts "Please enter animal's name"
		  aname = gets.chomp.to_s

		puts "Please enter animal's breed."
		  breed = gets.chomp.to_s

		puts "Please enter animal's age."
		  aage = gets.chomp.to_s

		puts "Please enter animal's gender."
		  agender = gets.chomp.to_s

		puts "Please enter animal's favorite toy(s)."
		  toys = gets.chomp.to_s

	# shelter.animals << Animal.new(aname, breed, aage, agender, toys)
	 client.drop_animal(animal)
	
	else
		print "OK"
	end
	addanimal
end