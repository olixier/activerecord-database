require 'sqlite3'

# creates the database
db_path = "db/cookbook.sqlite"
db = SQLite3::Database.new(db_path)

# creates the schema of the database
# your code here
sql = %q{
  
}
db.execute(sql)

#*************************************

# function to create a recipe
def create_recipe(db,name,description,length,difficulty)
  # your code here
end

# function to delete a recipe
def delete_recipe(db,id)
  # your code here
end

# function to delete all recipes
def delete_all_recipes(db)
  # your code here
end

# function to update a recipe
def update_recipe(db,id,description)
  # your code here
end

def get_recipes(db)
  # function to get all recipes
end


#*************************************

# program

puts "Salut Robuchon, what do you want to do today?"
puts "1. create a recipe"
puts "2. delete all recipes"
puts "3. read your recipes"

choice =  gets.chomp.to_i

if choice == 1
  # your code here to create a recipe
  # you need to ask for name, description, length and difficulty
  
elsif choice == 2
  # your code here to delete all recipes
  
elsif choice == 3
  # your code here to read all recipes
end 
  
  
  
  
  
  
  
  