class Song < ActiveRecord::Base
  belong_to :genre
  belong_to :artist
end
