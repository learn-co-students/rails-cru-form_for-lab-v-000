class ArtistsController < ApplicationController
  def new
  end

  def create
    @artist = Artist.create(artist_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def show
    @artist = Artist.find(params[:id])
  end

  private

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end

end
