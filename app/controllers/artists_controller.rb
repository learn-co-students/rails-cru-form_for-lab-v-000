class ArtistsController < ApplicationController

  def create
    @artist = Artist.new(artist_params(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def destroy
    @artist.find(params[:id])
    @artist.destroy
    redirect_to artists_path
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def index
  end

  def new
    @artist = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end
