require 'sqlite3'

# creates the database
db_path = "db/cookbook.sqlite"
db = SQLite3::Database.new(db_path)

# creates the schema of the database
# your code here
sql = %q{ CREATE TABLE Recipes
(
Id integer primary key autoincrement,
Name varchar(255),
Description varchar(255),
Length int,
Difficulty int
)
}

begin
	db.execute(sql)
	puts "Welcome to your new Cookbook!"
rescue
	puts "Welcome back to your Cookbook!"
end

#*************************************

# function to create a recipe
def create_recipe(db, name, description, length, difficulty)
  db.execute("INSERT INTO Recipes (Name, Description, Length, Difficulty) VALUES ('#{name}', '#{description}', #{length}, #{difficulty})")
end

# function to delete a recipe
def delete_recipe(db,id)
  db.execute("DELETE FROM Recipes WHERE Id = #{id}")
end

# function to delete all recipes
def delete_all_recipes(db)
  db.execute("DELETE FROM Recipes")
end

# function to update a recipe
def update_recipe(db,id,description)
	db.execute("UPDATE Recipes SET Description = '#{description}' WHERE Id = #{id}")
end

def get_recipes(db)
  db.execute("SELECT * FROM Recipes").each { |row| puts "#{row[0]}. #{row[1]} (#{row[2]}, #{row[3]}min, difficulty #{row[4]}/3)"}
end


#*************************************

# program

while true

	puts "What do you want to do?"
	puts "1. create a recipe"
	puts "2. delete all recipes"
	puts "3. read your recipes"
	puts "4. exit the Cookbook"

	choice =  gets.chomp.to_i

	break if choice == 4

	if choice == 1
		puts "What is the name of the recipe?"
		name = gets.chomp
		puts "What is the description?"
		description = gets.chomp
		puts "What is the cooking time (in minutes)?"
		length = gets.chomp.to_i
		puts "What is the difficulty (on a scale of 3)?"
		difficulty = gets.chomp.to_i
		create_recipe(db, name, description, length, difficulty)
		puts "Added!"
	  
	elsif choice == 2
	  delete_all_recipes(db)
	  
	elsif choice == 3
	  get_recipes(db)
	end 
end