class SongsController < ApplicationController
def index
  @songs = Song.all
end
 def new
   @songs = Song.new
 end
 
  def show
    get_song
    @artist = Artist.find(@song.artist_id)
    @genre= Genre.find(@song.genre_id)
  end
  
  def edit
    get_song
  end
  
  def create
    @song = Song.new(song_params)
    @song.save
    redirect_to song_path(@song)
  end
  
  def update
    get_song
    @song.update(song_params)
    redirect_to song_path(@song)
  end
   
private
   
 def get_song
   @song = Song.find(params[:id])
 end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
