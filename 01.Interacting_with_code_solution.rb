require 'sqlite3'


# opens the database
database_path = "db/Chinook_Sqlite.sqlite"
db = SQLite3::Database.new(database_path)

# returns a list of all the tables of the database
def list_tables(db)
  # your code here
  tables = db.execute("SELECT name FROM sqlite_master WHERE type='table'")
end

puts "List of tables: #{list_tables(db)}"


# How many artists are in the artists table ?
# How many tracks are in the Track table ?

# For these two questions we recommand creating a function that your can call with the corresponding table

def number_of_rows(db,table_name)
  # your code here
  count = db.execute("SELECT count(*) from #{table_name}")
end

puts "There are #{number_of_rows(db,"Artist")} artists"
puts "There are #{number_of_rows(db,"Track")} tracks"
