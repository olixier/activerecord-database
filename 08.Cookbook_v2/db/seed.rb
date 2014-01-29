require './models/recipe'
require './models/user'
require 'faker'
require 'open-uri'
require 'nokogiri'

# Seed you database with recipe data from marmiton
puts "Seeding database..."
# Here is a sample of ingredients (you are free to add some !)
ingredients = ["curry", "crevettes", "agneau", "pomme", "orange", "cafe"] # , "asperges", "celeri", "dorade"]


# creates users with the Faker Gem

(1..10).each do |user|
	User.create(name: Faker::Name.name, email: Faker::Internet.email)
end



# for each user, pick randomly one ingredient or more from the list of ingredients and attach recipes to the user

User.all.each do |user|

	random_ingredients = ingredients.shuffle.first(1 + rand(ingredients.length))
	random_ingredients.each do |ingredient|

		(1..4).each do |difficulty|

			file = open("http://www.marmiton.org/recettes/recherche.aspx?aqt=#{ingredient}&dif=#{difficulty}&sort=fastdesc&st=5")
			doc = Nokogiri::HTML(file)

			doc.search('.m_search_result').each do |element|
		    name = element.search('.m_search_titre_recette > a').inner_text
		    desc = element.search('.m_search_result_part4').inner_text.strip
		    length = element.search('.m_search_result_part4').inner_text.match(/Cuisson : (\d+) min/)[1]
		    rating = element.search('.etoile1').size
		    Recipe.create(name: name, description: desc, length: length, rating: rating, difficulty: difficulty, user_id: user.id)	
			end
		end

	end

end