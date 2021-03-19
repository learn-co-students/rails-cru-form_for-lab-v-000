class CreateArtist < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :published_status
    end
  end
end
