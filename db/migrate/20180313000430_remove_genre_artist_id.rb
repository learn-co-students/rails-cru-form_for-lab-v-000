class RemoveGenreArtistId < ActiveRecord::Migration
  def change
    remove_column :genres, :artist_id, :integer
  end
end
