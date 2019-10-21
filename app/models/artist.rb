class Artist < ApplicationRecord
    has_many :songs
    has_many :songs, through: :genres
end
