#Queries

* In this exercise your will build more complex SQL queries to read and manipulate data from a SQLite database.

## Objectives

From the Chinook Database, you will have to do the following:

- Writes a function that returns the list of all the track names

	````
	def get_tracks
	
	end
	````

- Writes a function that returns an array of all the tracks names + the artist. The output should be an array of arrays. 
[ ["track name","album name"], ["track name","album name"], etc.... ]

	````
	def get_tracks_with_albums
  		# your code here
	end
	````


- Writes a function that returns an array of all the tracks names + the album + the artist. The output should be an array of arrays.
[ ["track name","album name","artist name"], ["track name","album name","artist name"], etc.... ]

	````
	def get_tracks_with_albums_with_artists
  	# your code here
	end
	````


- Writes a function that find the top 5 artist with the most albums, ordered by number of albums. TIP: you have to use a GROUP BY statement.

	````
	def top_artists_with_most_albums
  		# your code here
	end
	````

- Writes a function that find the top 5 artist with the most tracks, ordered by number of tracks. TIP: you have to use a GROUP BY statement.

	````
	def top_artists_with_most_tracks
  		# your code here
	end
	````

