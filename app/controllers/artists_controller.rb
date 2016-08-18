require 'pry'

class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(check_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(check_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  private
  def check_params(*args)
    params.require(:artist).permit(*args)
  end
end
