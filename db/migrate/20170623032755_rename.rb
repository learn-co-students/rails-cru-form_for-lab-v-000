class Rename < ActiveRecord::Migration
  def change
    rename_table :table_genres, :genres
  end
end
