require 'pry'
class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    #binding.pry
    @artist = Artist.new(params.require(:artist).permit(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
  end

  def update
  end

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end
end
