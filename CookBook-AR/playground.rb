require './recipe'

# Retrieving single recipes

# First one
puts "*********** First and Last ***********" 
puts Recipe.first
puts Recipe.last

puts "*********** ID = 3 ***********" 
puts Recipe.find(3)

puts "*********** 60 minutes recipes ***********" 
puts Recipe.find_by_length(60)


puts "*********** < 10 minutes recipes ***********"
puts Recipe.where("length <= ?", 10)

puts "*********** < 20 minutes + max level 2 ***********"
puts Recipe.where("length <= :max_length AND difficulty <= :max_difficulty", max_length: 20, max_difficulty: 2)

puts "*********** < 10 minutes recipes ordered by difficulty ***********"
puts Recipe.where("length <= ?", 10).order("difficulty ASC")

puts "*********** Tarte recipes ***********"
#puts Recipe.where("name like '%tarte%'") # BEWARE OF SQL INJECTION => Recipe.where("name like '%#{params[:search]}%'")
puts Recipe.where("name like ?", %w( %tarte% ))

