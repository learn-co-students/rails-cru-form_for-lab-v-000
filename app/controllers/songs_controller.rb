class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    find_song
    find_song_genre
    find_song_artist
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(params.require(:song).permit(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    find_song
  end

  def update
    find_song
    @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def find_song
    @song = Song.find(params[:id])
  end

  def find_song_genre
    @genre = Genre.find(@song.genre_id)
  end

  def find_song_artist
    @artist = Artist.find(@song.artist_id)
  end
end
