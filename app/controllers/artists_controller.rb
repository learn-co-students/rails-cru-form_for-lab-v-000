class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.find_by(params[:id])
  end

  def show
    @artist = Artist.find_by(params[:id])
  end

  def update
    @artist = Artist.find_by(params[:id])
  end
end
