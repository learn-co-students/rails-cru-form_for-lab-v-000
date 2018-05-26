class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :artist_id
      t.integer :genre_id
      t.belongs_to :genre, index: true, foreign_key: true
      t.belongs_to :artist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
