class ChangeDataTypeInBioColumn < ActiveRecord::Migration
  def change
    change_column :artists, :bio, :text
  end
end
