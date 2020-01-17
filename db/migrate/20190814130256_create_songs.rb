class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.belongs_to :artist, index: true
      t.belongs_to :genre, index: true

      t.timestamps
    end
  end
end
