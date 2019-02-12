class SongsController < ApplicationController
  
  def index
    @songs = Song.all
  end
  
  def show 
    set_song
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
    set_song
  end
  
  def update 
    set_song
    @song.update(song_params(:name, :artist_id, :genre_id))
    
    redirect_to song_path(@song)
  end
  
  private
  
  def set_song 
    @song = Song.find(params[:id])
  end
  
  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
