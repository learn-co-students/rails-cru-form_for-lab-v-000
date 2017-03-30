class ArtistsController < ApplicationController
  def create
    @artist = Artist.new
  end

  def new
    @artist = Artist.new(artist_params(:name, :bio))
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  private

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end

end
