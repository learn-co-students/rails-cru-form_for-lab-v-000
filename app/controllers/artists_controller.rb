class ArtistsController < ApplicationController
  has_many :songs
  has_many :genres, through: :songs

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end
end
