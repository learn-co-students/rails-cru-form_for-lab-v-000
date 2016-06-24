class CreateTables < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.text :bio
    end

    create_table :songs do |t|
      t.string :name
      t.integer :artist_id
      t.integer :genre_id 
    end

    create_table :genres do |t|
      t.string :name
    end
  end
end
