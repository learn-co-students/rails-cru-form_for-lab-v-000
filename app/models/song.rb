class Song < ActiveRecord::Base
  belongs_to :artists
  belongs_to :genre
end
