require 'sqlite3'

# opens the database
database_path = "db/Chinook_Sqlite.sqlite"
db = SQLite3::Database.new(database_path)

# Writes a function that returns the list of all the track names
def get_tracks
  # your code here
end

# Writes a function that returns an array of all the tracks names + the artist
# the output should an array of arrays.
# [ ["track name","album name"], ["track name","album name"], etc.... ]
def get_tracks_with_albums
  # your code here
end

# Writes a function that returns an array of all the tracks names + the album + the artist
# the output should an array of arrays.
# [ ["track name","album name","artist name"], ["track name","album name","artist name"], etc.... ]
def get_tracks_with_albums_with_artists
  # your code here
end

# Writes a function that find the top 5 artist with the most albums, ordered by number of albums
def top_artists_with_most_albums
  # your code here
end

# Writes a function that find the top 5 artist with the most tracks, ordered by number of tracks
def top_artists_with_most_tracks
  # your code here
end