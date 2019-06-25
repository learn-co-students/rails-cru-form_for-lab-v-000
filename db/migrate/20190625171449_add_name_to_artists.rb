class AddNameToArtists < ActiveRecord::Migration[5.0]
  def change
    add_column :artists, :name, :string
  end
end
