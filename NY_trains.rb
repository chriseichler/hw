
n = {"Times Square" => 1, "34th"=> 2, "28th"=> 3, "23rd"=> 4, "Union Square"=> 5, "8th"=> 6}
l = {"8th" => 1, "6th" => 2, "Union Square" => 3, "3rd" => 4, "1st" => 5}
six = {"Grand Central" => 1, "33rd" => 2, "28th" => 3, "23rd" => 4, "Union Square" => 5, "Astor Place" => 6}

print "Please enter the subway stop you are starting from: "

startst = gets.chomp.to_s

print "Please enter the line you are starting on: "

startlinechoice = gets.chomp.downcase.to_s

print "Please enter your destination stop: "

endingst = gets.chomp.to_s

print "Please enter your destination line: "

endinglinechoice = gets.chomp.downcase.to_s


case startlinechoice
when "n"
  firstline = n
when "l"
  firstline = l
when "six"
  firstline = six
else
	puts "Please enter n, l, or six."
end

case endinglinechoice
when "n"
  secondline = n
when "l"
  secondline = l
when "six"
  secondline = six
else
	puts "Please enter n, l, or six."
end


if endinglinechoice != startlinechoice
	
	answ = ((firstline["Union Square"] - firstline[startst]).abs + (secondline["Union Square"] - secondline[endingst]).abs)

else
	answ = ((firstline[endingst] - firstline[startst]).abs)
end

puts "You have #{answ} stops."

# puts "LIST OF STATIONS"
# puts
# print "N LINES: Times Square", "34th", "28th", "23rd", "Union Square", "8th"
# print "L LINES: 8th", "6th", "Union Square", "3rd","1st"
# print "6 LINE:  Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"


# puts "These are your current stops" 
# puts "Times Square", "34th", "28th", "23rd", "Union Square", "8th"

# n.index("Times Square")

#def singline dist

#end	


# trainhash = Hash.new[nuu.map.with_index.to_a]
# hash["34"]
# if on same line

# def oneline
#  (ending-key value - start key value)
# N.index
# # index
#  #arguments.map(&:first).each do |key, value|

# end

