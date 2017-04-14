class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
