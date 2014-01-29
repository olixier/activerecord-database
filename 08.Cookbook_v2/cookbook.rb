require_relative 'config/application'
require './models/recipe'
require './models/user'

# finds all the recipes that contain
puts "Number of users in the database"
puts User.count

User.all.each do |user|
	print "\n" + user.name
	puts ": #{Recipe.where(user_id: user.id).count} recipes"
	Recipe.where(user_id: user.id).each { |recipe| puts "- #{recipe.name}"}
end

puts "The user with the highest average difficulty is:"

print User.find(Recipe.group("user_id").order("avg(difficulty) DESC").first.user_id).name
d = Recipe.group("user_id").select("user_id, avg(difficulty) as diff").order("diff desc").first.diff
puts " (average: #{d})"