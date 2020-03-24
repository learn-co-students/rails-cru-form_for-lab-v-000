class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    artist = Artist.create(artist_params)

    redirect_to artist_path(artist)
  end

  def show
    find_artist
  end

  def edit
    find_artist
  end

  def update
    artist = Artist.update(artist_params)

    redirect_to artist_path(artist)  
  end

  private

  def find_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
end
