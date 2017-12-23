class ChangeSongIdToGenreIdInSongs < ActiveRecord::Migration
  def change
    rename_column :songs, :song_id, :genre_id
  end
end
