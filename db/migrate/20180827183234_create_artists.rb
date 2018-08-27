class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :string
      t.string :bio
      t.string :text

      t.timestamps null: false
    end
  end
end
