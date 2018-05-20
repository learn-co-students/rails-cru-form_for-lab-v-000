class ArtistsController < ApplicationController
  has_many :songs
  has_many :genres, through: :songs
end
