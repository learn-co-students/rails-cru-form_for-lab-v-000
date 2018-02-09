class RemoveBioFromSongs < ActiveRecord::Migration
  def change
    remove_column :songs, :bio, :string
  end
end
