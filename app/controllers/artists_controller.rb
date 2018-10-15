class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(name: params[:artist][:name], bio: params[:artist][:bio])
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.new
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(params.require(:artist))
    redirect_to artist_path(@artist)
  end
end
