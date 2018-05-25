class SongsController < ApplicationController

  def show
    find_song
    find_artist
    find_genre
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def edit
    find_song
  end

  def update
    find_song
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  def index
    @songs = Song.all
  end

  ##### HELPERS #####

  def find_song
    @song = Song.find(params[:id])
  end

  def find_artist
    @artist = Artist.find(@song.artist_id)
  end

  def find_genre
    @genre = Genre.find(@song.genre_id)
  end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
