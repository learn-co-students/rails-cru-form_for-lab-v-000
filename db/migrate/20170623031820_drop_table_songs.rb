class DropTableSongs < ActiveRecord::Migration
  def change
    drop_table :songs
  end
end
