class Song < ActiveRecord::Base
  # validates_presence_of :name, :artist_id, :genre_id
  belongs_to :artist
  belongs_to :genre
end
