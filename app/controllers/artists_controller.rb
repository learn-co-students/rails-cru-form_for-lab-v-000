class ArtistsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @artist = Artist.new
  end

  def edit
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.save
    redirect_to artist_path(@artist)
  end

  def update
  end

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
end
