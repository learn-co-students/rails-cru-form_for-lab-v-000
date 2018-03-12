class DropTableArtists < ActiveRecord::Migration
  def change
    drop_table :artists
  end
end
