class Song < ActiveRecord::Base

  belongs_to :artist
  belongs_to :genre

end


# Rails Generator Used #
# rails g resource Song name:string artist_id:integer genre_id:integer --no-test-framework
