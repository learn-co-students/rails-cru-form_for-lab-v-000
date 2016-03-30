class AddHeightToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :height, :integer
  end
end
