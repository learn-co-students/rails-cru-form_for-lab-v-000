class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    find_song
    find_artist
    find_genre
  end

  def edit
    find_song
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.save
    redirect_to song_path(@song)
  end

  def update
    find_song
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  private

  def find_song
    @song = Song.find(params[:id])
  end

  def find_artist
    find_song
    @artist = Artist.find(@song.artist_id)
  end

  def find_genre
    find_song
    @genre = Genre.find(@song.genre_id)
  end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
