class AddBioToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :bio, :string
  end
end
