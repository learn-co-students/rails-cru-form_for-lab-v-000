class SongsController < ApplicationController
  def index
    @songs = Song.all
  end
  
  def show
    @song = Song.find(params[:id])
  end
  
  def new
    @song = Song.new
  end
  
  def create
    print song_params
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end
  
  def edit
    @song = Song.find(params[:id])
  end
  
  def update
    print song_params
    @song = Song.find(params[:id])
    @song.update(name: song_params[:name], artist_id: song_params[:artist_id], genre_id: song_params[:genre_id])
    redirect_to song_path(@song)
  end
  
  private
  
  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
