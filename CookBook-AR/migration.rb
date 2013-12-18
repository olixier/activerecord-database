require 'active_record'
require 'sqlite3'
require 'logger'

ActiveRecord::Base.logger = Logger.new('debug.log')
ActiveRecord::Base.configurations = YAML::load(IO.read('database.yml'))
ActiveRecord::Base.establish_connection('development')

class Schema < ActiveRecord::Migration
  
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.integer :length
      t.integer :difficulty
      t.integer :rating      
      
      t.timestamps
    end
    
    add_index :recipes, :name
  end
  
  def clear
    drop_table :recipes
  end
end


