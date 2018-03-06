class SongsAndGenres < ActiveRecord::Migration
  def change
      create_table :songs do |t|
        t.string :name

        t.timestamps null: false
      end

      create_table :genres do |t|
        t.string :name

        t.timestamps null: false
      end

      create_table :songs_genres do |t|
        t.belongs_to :song, index: true
        t.belongs_to :genre, index: true
      end
    end

end
