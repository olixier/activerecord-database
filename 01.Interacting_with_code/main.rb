require 'sqlite3'

# opens the database
database_path = "db/jukebox.sqlite"
db = SQLite3::Database.new(database_path)

def number_of_rows(db,table_name)
  db.execute('select * from ' + table_name).size
end

puts "There are #{number_of_rows(db,"Artist")} artists"
puts "There are #{number_of_rows(db,"Track")} tracks"
puts "There are #{number_of_rows(db,"Album")} albums"
puts "There are #{number_of_rows(db,"Genre")} genres"
puts "There are #{number_of_rows(db,"MediaType")} media types"


# returns all the artists sorted by alphabetical order.
artists =  db.execute('select Name from Artist').sort

# # returns all the love songs
love_songs = db.execute("select * from Track where Name like '%love%'")

# # returns all the tracks that are longer than 5 minutes.
long_tracks = db.execute("select * from Track where Milliseconds > 300000")