class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.belongs_to :artist, foreign_key: true
      t.belongs_to :genre, foreign_key: true

      t.timestamps null: false
    end
  end
end
