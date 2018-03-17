class ArtistsController < ApplicationController

  def show
    select_artist
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
    select_artist
  end

  def update
    select_artist
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  private

  def select_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

end
