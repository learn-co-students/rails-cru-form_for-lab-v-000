class Droptables < ActiveRecord::Migration
  def change
    drop_table :artists
    drop_table :genres
    drop_table :songs
  end
end
