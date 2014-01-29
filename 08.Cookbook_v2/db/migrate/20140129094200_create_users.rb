class CreateUsers < ActiveRecord::Migration
  def up
		create_table :users do |t|
			t.string "name", :limit => 100, :null => false
			t.string "email", :limit => 255, :null => false
		end
  end
end