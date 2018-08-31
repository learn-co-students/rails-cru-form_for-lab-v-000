class CreateRemoveGenres < ActiveRecord::Migration
  def change
    create_table :remove_genres do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
