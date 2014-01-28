require 'sqlite3'

# opens the database
database_path = "db/jukebox.sqlite"
db = SQLite3::Database.new(database_path)


# your DJ algorithm
iterations = 0
duration = 0

until (duration > 3590000) and (duration < 3610000)
	duration = 0
	iterations += 1
	n = rand(15..30)
	duration = 0
	playlist = db.execute("SELECT * FROM Track ORDER BY RANDOM() LIMIT " + n.to_s)
	playlist.each { |row| duration += row[6] } # playlist.reduce(0) { |sum, r| sum + r[6].to_i }
	puts duration
end

puts playlist
puts "Duration: #{duration}"
puts "Found after #{iterations} iterations"

# A rajouter : exactement 3,600,000 ms?
# A rajouter : tracks all different ?