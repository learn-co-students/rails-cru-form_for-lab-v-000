class ArtistsController < ApplicationController

  def show
    @artist = current_artist
  end

  def new
    
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = current_artist
  end

  def update
    current_artist.update(artist_params)
    redirect_to artist_path(current_artist)
  end

  private

  def current_artist
    Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

end
