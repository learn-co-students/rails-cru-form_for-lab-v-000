class Song < ApplicationRecord
    #made using rails g model Song name:string artist_id:integer genre_id:integer --no-test-framework
    belongs_to :artist
    belongs_to :genre
end
