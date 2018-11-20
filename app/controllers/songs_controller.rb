require 'pry'


class SongsController < ApplicationController


  def index
   @song = Song.all
 end



  def new
    @song = Song.new
  end


  def create
    @song = Song.new(song_params(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end


  private


  def song_params(*arg)
    params.require(:song).permit(*arg)
  end

end
