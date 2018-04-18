class SongsController < ApplicationController
    
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end
  
  def create
    @song = Song.new(song_params)
    redirect_to song_path(@song) if !!@song.save
  end
  
  def show
    @song = Song.find_by(:id => params["id"])
  end
  
  def edit
    @song = Song.find_by(:id => params["id"])
  end
  
  def update
    @song = Song.update(params["id"], song_params)
    redirect_to song_path(@song)
  end
  
  private
  
  def song_params(*args)
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
