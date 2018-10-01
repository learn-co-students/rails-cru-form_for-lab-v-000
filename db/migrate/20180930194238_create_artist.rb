class CreateArtist < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.text :bio

      t.timestamps :true
    end
  end
end
