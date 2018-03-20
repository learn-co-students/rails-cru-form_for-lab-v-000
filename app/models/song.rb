class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :song
end
