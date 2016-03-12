class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.references :artist, index: true, foreign_key: true
      t.references :genre, index: true, foreign_key: true
      # t.integer :artist_id
      # t.integer :genre_id

      t.timestamps null: false
    end
  end
end
