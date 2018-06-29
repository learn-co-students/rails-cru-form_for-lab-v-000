class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    find_song
    @genre = Genre.find(@song.genre_id)
    @artist = Artist.find(@song.artist_id)
  end

  def new
    @song = Song.new
  end

  def edit
    find_song
  end

  def create
    @song = Song.create(params.require(:song).permit(:name, :artist_id, :genre_id))

    redirect_to @song
  end

  def update
    find_song
    @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
    
    redirect_to @song
  end

  private

  def find_song
    @song = Song.find(params[:id])
  end

end
