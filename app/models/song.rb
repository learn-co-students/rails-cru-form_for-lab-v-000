class Song < ActiveRecord::Base
  belongs_to :Genre
  belongs_to :Artist
end
