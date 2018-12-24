class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end

  def create
    byebug
    @artist = Artist.new(params.require(:artist))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(params.require(:artist))
    redirect_to artist_path(@artist)
  end

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end
end
