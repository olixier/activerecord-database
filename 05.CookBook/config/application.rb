require 'sqlite3'
require 'active_record'

ActiveRecord::Base.configurations = YAML::load(IO.read(File.join(File.dirname(__FILE__),'database.yml')))
ActiveRecord::Base.establish_connection('development')


# Migrations
# Create the migration for the Recipe table
unless ActiveRecord::Base.connection.tables.include? "recipes"
  ActiveRecord::Schema.define do
    create_table :recipes do |t|
    	t.column "name", :string, :limit => 100, :null => false
    	t.column "description", :string, :limit => 255, :null => false
    	t.column "length", :integer, :default => 0
    	t.column "difficulty", :integer, :default => 0
    end
  end
end