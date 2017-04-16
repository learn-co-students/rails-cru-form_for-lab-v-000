class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :artist_id
      t.integer :genre_id
      add_foreign_key :songs, :artists
      add_foreign_key :songs, :genres
    end
  end
end
