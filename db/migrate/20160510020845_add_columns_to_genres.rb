class AddColumnsToGenres < ActiveRecord::Migration
  def change
    add_column :genres, :name, :string
  end
end
