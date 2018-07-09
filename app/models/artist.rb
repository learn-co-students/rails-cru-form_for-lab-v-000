class Artist < ActiveRecord::Base
  has_many :Songs
end
