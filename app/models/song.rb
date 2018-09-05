class Song < ActiveRecord::Base
  belongs_to :artist, :genre
end
