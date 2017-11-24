class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def update
    @song = Song.find_by(id: params[:id])
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find_by(id: params[:id])
  end

  def show
    @song = Song.find_by(id: params[:id])
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
