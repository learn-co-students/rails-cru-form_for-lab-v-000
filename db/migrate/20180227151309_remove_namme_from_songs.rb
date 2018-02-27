class RemoveNammeFromSongs < ActiveRecord::Migration
  def change
    remove_column :songs, :namme, :string
  end
end
