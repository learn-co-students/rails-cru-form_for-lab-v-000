class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def create
    @artist = Artist.create(params[:artist])
    redirect_to artist_path(@artist)
  end

  def update
  end

  private

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end




end
