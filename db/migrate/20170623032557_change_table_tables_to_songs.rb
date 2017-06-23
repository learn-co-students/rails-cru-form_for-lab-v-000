class ChangeTableTablesToSongs < ActiveRecord::Migration
  def change
    rename_table :tables, :songs
  end
end
