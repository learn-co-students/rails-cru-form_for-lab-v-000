class Song < ActiveRecord::Base
  belongs_to :genres
  belongs_to :artist
end
