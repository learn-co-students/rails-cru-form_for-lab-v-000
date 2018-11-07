class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    find_artist_by_id
  end

  def update
    find_artist_by_id
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

  def find_artist_by_id
    @artist = Artist.find(params[:id])
  end

end
