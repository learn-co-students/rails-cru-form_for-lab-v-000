class SongsController < ApplicationController

  def show
    @song = Song.find_by(params[:id])
    @genre = Genre.find_by_id(@song.genre_id)
    @artist = Artist.find_by_id(@song.artist_id)
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find_by(params[:id])
  end

  def update
    @song = Song.find_by(params[:id])
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  def index
    @songs = Song.all
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
