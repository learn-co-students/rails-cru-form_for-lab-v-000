class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params(:name, :bio))
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def destroy
  end

  def index
  end

  def show
    @artist = Artist.find(params[:id])
  end

  private

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end
