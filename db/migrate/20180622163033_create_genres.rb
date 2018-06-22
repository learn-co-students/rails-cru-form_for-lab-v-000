class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :name
      t.string :genre

      t.timestamps null: false
    end
  end
end
