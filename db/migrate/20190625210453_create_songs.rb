class CreateSongs < ActiveRecord::Migration[5.0]
  #made using rails g model Song name:string artist_id:integer genre_id:integer --no-test-framework
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :artist_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
