# You will need to build in the ability to create, update, and show for each model. And for the song index page you need to have it display each of the song's genre and artist, and link to the respective genre and artist show pages.

class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
	  @artist = Artist.find(params[:id])
	  @artist.update(artist_params)
	  redirect_to artist_path(@artist)
  end

  def new
    @artist = Artist.new
  end

  def create
    artist = Artist.create(artist_params)
    redirect_to artist_path(artist)
  end

  private
  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

end
