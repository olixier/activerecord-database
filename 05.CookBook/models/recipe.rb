class Recipe < ActiveRecord::Base

	def to_s
		"#{name} : #{description}, #{length} min, difficulty #{difficulty}/3"
	end

end