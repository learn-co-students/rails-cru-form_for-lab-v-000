class Song < ActiveRecord::Base
  belongs_to :Artists
  belongs_to :Genre
end
