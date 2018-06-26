class ArtistsController < ApplicationController
  def show
    @artist = Artist.find_by(id: params[:id])
  end

  def new
  end
end