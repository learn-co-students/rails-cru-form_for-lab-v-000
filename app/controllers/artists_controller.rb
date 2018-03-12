class ArtistsController < ApplicationController
  before_action :set_resource, only: [:show, :edit]

  def new
    @artist = Artist.new
  end

  def create
    artist = Artist.create(strong_params)
    redirect_to artist_path(artist)
  end

  def update
    artist = Artist.update_all(strong_params)
    redirect_to artist_path(artist)
  end

  private
  def strong_params
    params.require(:artist).permit(:name, :bio)
  end

  def set_resource
    @artist = Artist.find(params[:id])
  end
end
