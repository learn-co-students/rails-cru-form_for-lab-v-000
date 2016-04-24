require 'pry'

class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
    @artists = Artist.all
    @genres = Genre.all
  end

  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def show
    @song = find
  end

  def edit
    @song = find
  end

  def update
    @song = find
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  private
    def find
      Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
