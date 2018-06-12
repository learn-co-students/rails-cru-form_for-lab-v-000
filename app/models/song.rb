class Song < ActiveRecord::Base
  belong_to :artists
  belong_to :genres
end
