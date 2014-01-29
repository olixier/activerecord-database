class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description, :limit => 255, :null => false
      t.integer :length, :default => 0
      t.integer :rating, :default => 0
      t.integer :difficulty, :default => 0
      t.timestamps
    end
  end
end