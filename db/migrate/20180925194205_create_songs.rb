class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

#rails generate migration add_email_to_users email:string