class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(strong_params(:artist, :name, :bio))
    redirect_to "/artists/#{@artist.id}"
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(strong_params(:artist, :name, :bio))
    redirect_to "/artists/#{@artist.id}"
  end

end
