class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
    	t.string :name
    	t.date :date
    	t.text :entry
    	t.text :image
    	t.string :location
    	t.float :lat
    	t.float :long
    	t.integer :user_id
    	t.integer :country_id
    	t.timestamps
    end
  end
end
