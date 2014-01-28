require_relative 'config/application'
require './models/recipe'

# your program here

puts "Salut Robuchon, what do you want to do today?"
puts "1. create a recipe"
puts "2. delete all recipes"
puts "3. read your recipes"

choice = gets.chomp.to_i

if choice == 1
	puts "What is the name of the recipe?"
	name = gets.chomp
	puts "What is the description?"
	description = gets.chomp
	puts "What is the cooking time (in minutes)?"
	length = gets.chomp.to_i
	puts "What is the difficulty (on a scale of 3)?"
	difficulty = gets.chomp.to_i
	Recipe.find_or_create_by(name: name, description: description, length: length, difficulty: difficulty)
	puts "Added!"
  
elsif choice == 2
	Recipe.delete_all
	puts "All recipes deleted!"
  
elsif choice == 3
	puts Recipe.all
	# Recipe.all.each { |recipe| puts "#{recipe.id}. #{recipe.name} (#{recipe.description}, #{recipe.length}min, difficulty #{recipe.difficulty}/3)" }
  
else
  puts "i did not understand"
  
end