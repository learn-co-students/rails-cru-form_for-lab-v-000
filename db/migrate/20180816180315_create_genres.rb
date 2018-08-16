
class CreateGenres < ActiveRecord::Migration

  def change
    create_table :genres do |column|
      column.string :name
      column.timestamps null: false
    end
  end

end
