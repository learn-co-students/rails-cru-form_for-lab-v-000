class ArtistsController < ApplicationController
  before_filter :load_artist, only: [:show, :edit, :update]

  def show
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
  end

  def update
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  private
  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

  def load_artist
    @artist = Artist.find(params[:id])
  end
end
