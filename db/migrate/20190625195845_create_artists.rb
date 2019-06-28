class CreateArtists < ActiveRecord::Migration[5.0]
  #made using rails g model Artist name:string bio:text  --no-test-framework
  def change
    create_table :artists do |t|
      t.string :name
      t.text :bio

      t.timestamps
    end
  end
end
