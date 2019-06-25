class AddBioToArtists < ActiveRecord::Migration[5.0]
  def change
    add_column :artists, :bio, :text
  end
end
