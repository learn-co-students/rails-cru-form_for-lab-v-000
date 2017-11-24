require 'pry'

class ArtistsController < ApplicationController


  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(post_params(:name, :bio))
    redirect_to artist_url(@artist)
  end

  def edit
    @artist = Artist.find_by_id(params[:id])
  end

  def update
    @artist = Artist.find_by_id(params[:id])
    @artist.update(post_params(:name,:bio))
    redirect_to artist_url(@artist)
  end

  def show
    @artist = Artist.find_by_id(params[:id])
  end

  private

  def post_params(*args)
    params.require(:artist).permit(*args)
  end

end
