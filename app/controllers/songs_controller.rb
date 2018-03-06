class SongsController < ApplicationController

  def index 
    @songs = Song.all
  end

  def new
    @song = Song.new()
  end

  def create
    song = Song.create(params[:song].permit(:name, :artist_id, :genre_id))
    redirect_to song_path(song)
  end

  def show
    @song = Song.find(params[:id])
    @artist = Artist.find(@song.artist_id)
    @genre = Genre.find(@song.genre_id)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    song = Song.find(params[:id])
    song.update(params[:song].permit(:name, :artist_id, :genre_id))
    redirect_to song_path(song)
  end

  def destroy
    Song.find(params[:id]).destroy
  end

end
