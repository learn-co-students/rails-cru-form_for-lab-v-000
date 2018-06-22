class AddForeignKeysToArtistAndGenre < ActiveRecord::Migration
  def change
    def change
      add_column :genres, :song_id, :integer
      add_column :artists, :song_id, :integer
    end
  end
end
