class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.name = params[:artist][:name]
    @artist.bio = parmas[:artist][:bio]
    @artist.save

    redirect_to artists_path(@artist)
  end

  def show

  end

private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
end
