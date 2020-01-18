require 'pry'
class SongsController < ApplicationController
  def index
  	@songs = Song.all
  end

  def show
  	@song = Song.find(params[:id])
    @genre= Genre.find(@song.genre_id)
    @artist = Artist.find(@song.artist_id)
  end

  def new
  	@song = Song.new
  end

  def create
    @song = Song.new
    @song.name = params["song"]["name"]
    @song.genre_id = params["song"]["genre_id"]
    @song.artist_id = params["song"]["artist_id"]
    @song.save
    redirect_to song_path(@song)
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params(:name))
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  private

  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
