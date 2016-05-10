class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    redirect_to(@song)
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find_by_id(params[:id])
  end

  def update
    @song = Song.find_by_id(params[:id])
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  private
  def song_params
    params.require(:song).permit(:artist_id, :genre_id, :name)
  end
end
