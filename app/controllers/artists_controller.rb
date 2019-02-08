class ArtistsController < ApplicationController

  def index

  end

  def create
    @artist = Artist.new(artist_params)
    @artist.save
    redirect_to artist_path(@artist)
  end

  def show

  end

  def update

  end

  def edit

  end

  private

  def artist_params
  params.require(:artist).permit(:name, :bio)


end
