class AddColumnsToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :name, :string
    add_column :artists, :bio, :text
  end
end
