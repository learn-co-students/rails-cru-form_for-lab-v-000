class RemoveDatetimeFromGenres < ActiveRecord::Migration
  def change
    remove_column :genres, :timestamps, :string
    remove_column :genres, :null, :string
    remove_column :genres, :false, :string
  end
end
