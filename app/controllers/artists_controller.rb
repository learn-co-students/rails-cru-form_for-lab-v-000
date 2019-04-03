class ArtistsController < ApplicationController

  def index
  end

  def new
    @artist = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def create
    @artist = Artist.new(name: params[:artist][:name], bio: params[:artist][:bio])
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end

end
