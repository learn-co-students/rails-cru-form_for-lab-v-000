class ArtistController < ApplicationController
  def create
  end

  def update
  end

  def show
    @artist = Artist.find_by(params[:id])
  end

  def new
    @artist = Artist.new
  end
end
