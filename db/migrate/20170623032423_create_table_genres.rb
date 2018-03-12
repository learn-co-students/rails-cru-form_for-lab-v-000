class CreateTableGenres < ActiveRecord::Migration
  def change
    create_table :table_genres do |t|
      t.string :name
    end
  end
end
