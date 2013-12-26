# Interacting with a DB (SQLITE)

* Sqlite is a simple database that can be used as a standalone file.
* If you want more information: http://en.wikipedia.org/wiki/SQLite

## Objectives

* The goal of this first exercie is to use the command line to read and query a sample database called Chinook. [http://chinookdatabase.codeplex.com/](http://chinookdatabase.codeplex.com/)

## Setup

* Open your terminal/console
* Go to the exercice folder

    ````
    cd Lewagon/activerecord-database/
    ````
    
* Test if you have sqlite3 installed on your computer
   
   ````
   sqlite3 -version
   ````
   If not you can download it here [http://www.sqlite.org/download.html](http://www.sqlite.org/download.html) and follow the instructions to install it.
   

* You can open the database with:

   ````
   sqlite3 db/Chinook_Sqlite.sqlite
   ````

* The you are in the interactive sqlite3 console and your can write queries to the database.

* You can exit the sqlite3 console with:

	````
	.quit
	```

	
## Exercice

#### The goal of this exercise is to answer the following questions (Use the resources to help you answer the questions.)

* How many tables does the Chinook database contain ?
* What are the names of the columns of the Artist table ?
* How many artists are there in the Artist table ?
* How many tracks are there in the Track table ?


## Resources

[http://zetcode.com/db/sqlite/tool/](http://zetcode.com/db/sqlite/tool/)
	


