class RemoveColumnsFromGenres < ActiveRecord::Migration
  def change
    remove_column :genres, :artist_id
    remove_column :genres, :genre_id
  end
end
