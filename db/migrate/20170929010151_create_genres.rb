class CreateGenres < ActiveRecord::Migration
  def change
    drop_table :genres
    create_table :genres do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
