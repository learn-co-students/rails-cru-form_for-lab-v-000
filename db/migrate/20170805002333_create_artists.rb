class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.text :bio
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
