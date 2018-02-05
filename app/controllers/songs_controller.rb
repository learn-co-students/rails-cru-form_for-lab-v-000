class SongsController < ApplicationController
  
  def index
    @songs = Song.all
  end
    
  def show
    find_song
    @genre = @song.genre
    @artist = @song.artist
  end
  
  def new
    @song = Song.new
  end
  
  def create
    @song = Song.new(song_params(:name,:artist_id, :genre_id))
    @song.save
    redirect_to @song
  end
  
  def edit
    find_song
  end
  
  def update
    find_song
    @song.update(song_params(:name, :artist_id, :genre_id))
    redirect_to @song
  end
  
  private
  
  def find_song
    @song = Song.find(params[:id])
  end
  
  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
