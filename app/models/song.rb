class Song < ActiveRecord::Base
  belong_to :artist
  belong_to :genre
end
