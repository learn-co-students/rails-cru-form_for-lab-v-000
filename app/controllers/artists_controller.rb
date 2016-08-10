class ArtistsController < ApplicationController

  def index
    @artist = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
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

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end

end