
class CreateArtists < ActiveRecord::Migration

  def change
    create_table :artists do |column|
      column.string :name
      column.text :bio
      column.timestamps null: false
    end
  end

end