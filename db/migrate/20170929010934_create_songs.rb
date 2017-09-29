class CreateSongs < ActiveRecord::Migration
  def change
    drop_table :songs
    create_table :songs do |t|
      t.string :name
      t.integer :artist_id
      t.integer :genre_id
    end
  end
end
