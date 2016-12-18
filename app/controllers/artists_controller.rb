class ArtistsController < ApplicationController

  def show
    @artist = Artist.find_by(id: params[:id])
  end

  def new
  end

  def edit
    @artist = Artist.find_by(id: params[:id])
  end

  def create
    @artist = Artist.create(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def update
    @artist = Artist.find_by(params[:id])
    @artist.update(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def index
  end

end
