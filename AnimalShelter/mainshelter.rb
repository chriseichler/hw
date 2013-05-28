
require_relative 'Animals'
require_relative 'clients'
require_relative 'shelter'

puts "Would you like to list all the animals in the shelter?"
  answ = gets.chomp.to_s.downcase
  if answ == "no"
  	print "OK, alright."
  if answ == "yes"
  	print shelter.animals

  else
  	puts "Please answer yes or no."
  end

puts "Would you like to know how many animals we currently have?"
  answ = gets.chomp.to_s.downcase
	if answ == "no"
		print "OK, alright."
	if answ == "yes"
		print shelter.animals.length

  else
  	puts "Please answer yes or no."
  end

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

			if answ == "no"
				print "Ok"
			end
shelter.clients << Clients.new(name, age, gender, kids, petsnum)
end

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
end
puts "Would you like to see the list of all Animal Shelter clients?"
	answ = gets.chomp.to_s.downcase
	  if answ == "no"
	  	print "OK, alright."
	  elsif answ == "yes"
	  	print shelter.clients
	  elsif answ == !"yes" && answ == !"no"
  	puts "Please enter yes or no."
	  end
 #  clients = gets.chomp.to_s
 
	# 	puts "Please enter your name:"
	# 	  name = gets.chomp.to_s

	# 	puts "What is your age?"
	# 	  age = gets.chomp.to_s

	# 	puts "What is your gender?"
	# 	  gender = gets.chomp.to_s

	# 	puts "How many kids do you have?"
	# 	  kids = gets.chomp.to_s

	# 	puts "How many pets do you have?"
	# 	  petsnum = gets.chomp.to_s
	# end
