class RemoveBioFromArtists < ActiveRecord::Migration
  def change
    remove_column :artists, :bio, :string
  end
end
