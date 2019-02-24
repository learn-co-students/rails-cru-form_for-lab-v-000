class ArtistsController < ApplicationController

  def show
    find_artist
 end

  def new
    @artist = Artist.new
  end

  def edit
   find_artist
 end

  def create
    @artist = Artist.new(artist_params)
    @artist.save
    redirect_to artist_path(@artist)
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

  def find_artist
    @artist = Artist.find(params[:id])
  end

end
