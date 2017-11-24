class AddColumnsToGenres < ActiveRecord::Migration
  def change
    add_column :genres, :name, :text
  end
end
