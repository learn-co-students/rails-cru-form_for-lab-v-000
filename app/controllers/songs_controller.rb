class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.new(song_paparams)
    @song.save
    redirect_to song_path(@song)
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_paparams)
    redirect_to song_path(@song)
  end

  private
   def song_paparams
     params.require(:song).permit(:name, :artist_id, :genre_id)
   end

end
