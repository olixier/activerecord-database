require './db'
require './models/recipe'
require './models/chef'

# your code here to Create, Read, Update and Delete Chefs and Recipes


puts ENV["APP_ENV"]

chef = Chef.create(:name => "Joel Robuchon")

chefs = Chef.all
puts chef.as_json