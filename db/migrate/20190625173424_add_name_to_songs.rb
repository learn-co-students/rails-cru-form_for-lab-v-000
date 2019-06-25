class AddNameToSongs < ActiveRecord::Migration[5.0]
  def change
    add_column :songs, :name, :string
  end
end
