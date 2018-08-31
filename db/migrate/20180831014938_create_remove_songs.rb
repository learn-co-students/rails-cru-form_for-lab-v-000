class CreateRemoveSongs < ActiveRecord::Migration
  def change
    create_table :remove_songs do |t|
      t.string :name
      t.string :string
      t.integer :artist_id
      t.integer :genre_id

      t.timestamps null: false
    end
  end
end
