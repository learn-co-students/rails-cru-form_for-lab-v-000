class Genre < ActiveRecord::Base
  has_many :song
end
