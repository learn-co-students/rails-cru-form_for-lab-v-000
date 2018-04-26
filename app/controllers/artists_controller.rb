class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to artist_path(@artist)
  end

  def show
    artist
  end

  def edit
    artist
  end

  def update
    artist.update(artist_params)
    redirect_to artist_path(artist)
  end

  private

  def artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

end
