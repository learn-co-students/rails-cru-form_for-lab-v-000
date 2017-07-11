require 'pry'
class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    find_song
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    find_song
  end

  def update
    find_song
    @song.update(song_params(:name, :bio))
    redirect_to song_path(@song)
  end


  private
    def song_params(*args)
      params.require(:song).permit(*args)
    end

    def find_song
      @song = Song.find(params[:id])
    end
end
