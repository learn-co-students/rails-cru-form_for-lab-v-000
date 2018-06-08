class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = find_artist(params)
  end

  def update
    @artist = find_artist(params)
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  def show
    @artist = find_artist(params)
  end

  private

  def find_artist(params)
    Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

end
