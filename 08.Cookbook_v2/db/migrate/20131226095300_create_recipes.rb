class CreateRecipes < ActiveRecord::Migration
  def up
		create_table :recipes do |t|
			t.string "name", :limit => 100, :null => false
			t.string "description", :limit => 255, :null => false
			t.integer "length", :default => 0
			t.integer "rating", :default => 0
			t.integer "difficulty", :default => 0
		end
  end
end