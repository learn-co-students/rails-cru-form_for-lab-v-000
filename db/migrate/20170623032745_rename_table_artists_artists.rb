class RenameTableArtistsArtists < ActiveRecord::Migration
  def change
    rename_table :table_artists, :artists
  end
end
