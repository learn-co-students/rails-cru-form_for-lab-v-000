require 'pry'

class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    # @genre = Genre.find_by_id(@song.genre_id)
    @artist = Artist.find_by_id(@song.artist_id)

    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    # @genre = Genre.find_by_id(@song.genre_id)
    # @artist = Artist.find_by_id(@song.artist_id)

    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
    # @genre = Genre.find_by_id(@song.genre_id)
    # @artist = Artist.find_by_id(@song.artist_id)
  end

  private

  def song_params(*args)
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

end
