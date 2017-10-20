class AddBioToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :bio, :text
  end
end
