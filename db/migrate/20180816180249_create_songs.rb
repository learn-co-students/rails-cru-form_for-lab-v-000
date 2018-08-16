
class CreateSongs < ActiveRecord::Migration

  def change
    create_table :songs do |column|
      column.string :name
      column.integer :artist_id
      column.integer :genre_id
      column.timestamps null: false
    end
  end

end
