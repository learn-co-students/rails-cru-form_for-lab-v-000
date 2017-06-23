class CreateTable < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :songs
      t.string :name
      t.integer :artist_id
      t.integer :genre_id
    end
  end
end
