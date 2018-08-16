
class SongsController < ApplicationController
  before_action :find_song , only: [:show, :update]
  
  def show 
  end
  
  def create
    @song = Song.new(song_params(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end
  
  def update
    @song.update(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end 
  
  private
  
    def find_song
      @song = Song.find(params[:id])
    end
    
    def song_params(*args)
      params.require(:song).permit(*args)
    end
    
end
