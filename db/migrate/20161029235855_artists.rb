class Artists < ActiveRecord::Migration
  def change
  	create_table :artists do |t|
  		t.string :name
  		t.string :bio
  	end 
  end
end
