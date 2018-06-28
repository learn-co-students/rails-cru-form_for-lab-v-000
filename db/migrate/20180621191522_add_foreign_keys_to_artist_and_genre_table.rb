class AddForeignKeysToArtistAndGenreTable < ActiveRecord::Migration
  def change
    add_foreign_key :genres, :song_id, :integer
    add_foreign_key :artists, :song_id, :integer
  end
end
