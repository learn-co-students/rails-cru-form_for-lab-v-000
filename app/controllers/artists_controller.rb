class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def create
    @artist = Artist.create(artist_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    binding.pry
    @artist = Artist.find(params[:id])
    @artist = Artist.update(artist_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  private

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end




end
