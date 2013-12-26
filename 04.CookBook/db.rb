require 'active_record'
require 'sqlite3'

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database  => "db"
)

# Migrations

# Create the migration for the Chef table
unless ActiveRecord::Base.connection.tables.include? "chefs"
  ActiveRecord::Schema.define do 
    create_table :chefs do |table|
      table.column :name, :string
    end
  end
end
  
  
# Create the migration for the Recipe table
unless ActiveRecord::Base.connection.tables.include? "recipes"
  ActiveRecord::Schema.define do
    create_table :recipes do |table|
      table.column :chef_id, :integer
      table.column :name, :string    
    end
  end
end
 