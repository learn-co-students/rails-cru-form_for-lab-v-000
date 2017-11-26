class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to artist_url(@artist)
  end

  def show
    set_artist
  end

  def edit
    set_artist
  end

  def update
    set_artist
    @artist.update(artist_params)
    redirect_to artist_url(@artist)
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end
end
