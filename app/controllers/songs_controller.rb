class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find_by_id(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    song = Song.create(song_params)
    redirect_to song_path(song)
  end

  def edit
    @song = Song.find_by_id(params[:id]) # Maybe this should be abstracted into a private #get_song method.
  end

  def update
    song = Song.find_by_id(params[:id])
    song.update(song_params)
    
    redirect_to song_path(song)
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
