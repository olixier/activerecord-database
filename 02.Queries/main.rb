require 'sqlite3'

# opens the database
database_path = "db/jukebox.sqlite"
db = SQLite3::Database.new(database_path)

# 1. returns the list of tracks with their album and artist
tracks = db.execute("SELECT Track.Name, Artist.Name, Album.Title FROM Album INNER JOIN Track ON Track.AlbumId = Album.AlbumId INNER JOIN Artist ON Artist.ArtistId = Album.ArtistId")

# 2. For each genre of music, finds the number of tracks and the average song length.
genre_count = db.execute("SELECT GenreId, COUNT(*), AVG(Milliseconds) FROM Track GROUP BY GenreId")

# 3. List the top 5 rock artists
# your code here.

sql = " SELECT a.name, count(t.trackId) FROM Track t inner join Album b on t.albumId = b.albumId "
sql += " inner join Artist a on a.artistId = b.artistId "
sql += " inner join Genre g on g.genreId = t.genreId "
sql += " where g.name == 'Rock'  group by a.name order by count(t.trackId) DESC limit 5"
top_artists = db.execute(sql)
puts top_artists