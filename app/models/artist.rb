class Artist < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :songs
end
