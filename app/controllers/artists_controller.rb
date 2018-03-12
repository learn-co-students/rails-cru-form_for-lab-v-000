class ArtistsController < ApplicationController
  def new
    
  end

  def create
    artist = Artist.create(params.require(:artist).permit(:name))
    redirect_to artist_path(artist)
  end

  def show
    @artist = Artist.find(params.require(:id))
  end

  def edit
    @artist = Artist.find(params.require(:id))
  end

  def update
    artist = Artist.update(params.require(:id), params.require(:artist).permit(:name))
    redirect_to artist_path(artist)
  end
end
