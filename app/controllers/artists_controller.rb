class ArtistsController < ApplicationController

  def index
  end

  def show
    @artist = Artist.find_by(:id => params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(get_params(:artist, :name, :bio))

    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find_by(:id => params[:id])
  end

  def update
    @artist = Artist.find_by(:id => params[:id])
    @artist.update(get_params(:artist, :name, :bio))

    redirect_to artist_path(@artist)
  end

end
