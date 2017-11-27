class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.text :name
      t.text :artist_id
      t.text :genre_id

      t.timestamps null: false
    end
  end
end
