#a program to read and/or change entries in SQL database
require 'pry'
require 'pg'
require 'json'
require 'httparty'

conn = PG.connect(:dbname => 'moviez', :host => 'localhost')


print "What movie do you want to know all about? "
title= gets.chomp.gsub(" ", "+")
movie= HTTParty.get("http://www.omdbapi.com/?t=#{title}")

json_movie = JSON(movie.body)

title = json_movie['Title']
year = json_movie['Year']
rated = json_movie['Rated']
released =json_movie['Released']
runtime = json_movie['Runtime']
genre = json_movie['Genre']
director = json_movie['Director']
writer = json_movie['Writer']
actors = json_movie['Actors']
plot = json_movie['Plot'].gsub("'","")
poster = json_movie['Poster']

sql_command = "INSERT INTO moviez (title, year, rated, released, runtime, genre, director, writer, actors, plot, poster) VALUES ('#{title}', '#{year}', '#{rated}', '#{released}', '#{runtime}', '#{genre}', '#{director}', '#{writer}', '#{actors}', '#{plot}', '#{poster}');"
conn.exec(sql_command)

# rows = conn.exec("SELECT * FROM moviez WHERE title = '#{title}'") #give me all users back as an array. result is the row of users
# rows.each do |row|
#   puts "#{row['first']} #{row['last']}"
# end

rows = conn.exec("SELECT * FROM moviez WHERE title = '#{title}'") #give me all users back as an array. result is the row of users
rows.each do |row|
  puts "#{row['title']}, a #{row['genre']} starring #{row['actors']}, written by #{row['writer']} and directed by #{row['director']}, was released on #{row['released']}. It runs #{'runtime'} and is about #{row['plot']}."
end

conn.close   # to close connection to database. you should do this


# // IMDb ID to Search
# var imdbId = "tt1285016";

# // Send Request
# var http = new ActiveXObject("Microsoft.XMLHTTP");
# http.open("GET", "http://www.omdbapi.com/?i=" + imdbId, false);
# http.send(null);

# // Response to JSON
# var omdbData = http.responseText;
# var omdbJSON = eval("(" + omdbData + ")");

# // Returns Movie Title
# alert(omdbJSON.Title);



# print 'last name:'
#   last = gets.chomp
#   print 'dob:'
#   dob = gets.chomp
#   print 'relationship status:'
#   relationship = gets.chomp
#   print 'number of friends:'
#   friends = gets.chomp
#   print 'city:'
#   city = gets.chomp
