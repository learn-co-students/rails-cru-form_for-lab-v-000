class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(art_params)

    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(art_params)

    redirect_to artist_path(@artist)
  end

  def show
    @artist = Artist.find(params[:id])
  end

end


private

  def art_params
    params.require(:artist).permit(:name, :bio)
  end