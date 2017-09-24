class ArtistsController < ApplicationController
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
  def show
      @artist = Artist.new
  end
  def index
    @artist = Artist.all
  end
  def new
    @artist = Artist.new
  end
private

def artist_params
  params.require(:artist).permit(:name, :bio)
end
end
