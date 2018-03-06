class ArtistsController < ApplicationController

  def new
    @artist = Artist.new()
  end

  def create
    artist = Artist.create(params[:artist].permit(:name, :bio))
    redirect_to  artist_path(artist)
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    artist = Artist.find(params[:id])
    artist.update(params[:artist].permit(:name, :bio))
    redirect_to  artist_path(artist)
  end

  def destroy
    Artist.find(params[:id]).destroy
  end

end
