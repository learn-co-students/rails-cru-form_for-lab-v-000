class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.references :artist, index: true, foreign_key: true
      t.references :genre, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
