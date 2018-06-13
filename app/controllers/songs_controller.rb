class SongsController < ApplicationController
  def index 
    @songs = Song.all
  end 
  
  def new 
    @song = Song.new 
    render 'form'
  end 
  
  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end 
  
  def edit 
    @song = set_song
    render 'form'
  end 
  
  def update
    @song = set_song
    @song.update(song_params)
    redirect_to song_path(@song)
  end 
  
  def show 
    @song = set_song
  end 
  
  private 
  
  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end 
  
  def set_song 
    Song.find(params[:id])
  end 
end
