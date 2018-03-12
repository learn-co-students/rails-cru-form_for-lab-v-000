class SongsController < ApplicationController
  before_action :set_resource, only: [:show, :edit]

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    song = Song.create(strong_params)
    redirect_to song_path(song)
  end

  def update
    song = Song.update_all(strong_params)
    redirect_to song_path(song)
  end

  private
  def strong_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

  def set_resource
    @song = Song.find(params[:id])
  end
end
