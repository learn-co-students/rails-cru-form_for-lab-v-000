class SongsController < ApplicationController


  def index
   @songs = Song.all
 end



  def new
    @song = Song.new
  end


  def create
    @song = Song.create(song_params(:name, :artist_id, :genre_id))
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

  def delete
    @artist = Artist.find(params[:id])
    @artist.clear
  end 


  private


  def song_params(*arg)
    params.require(:song).permit(*arg)
  end

end
