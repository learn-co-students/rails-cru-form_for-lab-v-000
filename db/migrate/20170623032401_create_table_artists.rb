class CreateTableArtists < ActiveRecord::Migration
  def change
    create_table :table_artists do |t|
      t.string :name
      t.text :bio
    end
  end
end
