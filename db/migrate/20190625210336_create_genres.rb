class CreateGenres < ActiveRecord::Migration[5.0]
  #made using rails g model Genre name:string  --no-test-framework
  def change
    create_table :genres do |t|
      t.string :name

      t.timestamps
    end
  end
end
