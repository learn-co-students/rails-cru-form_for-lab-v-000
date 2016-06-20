class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = current_song
  end

  def new
    
  end

  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def edit
    @song = current_song
  end

  def update
    current_song.update(song_params)
    redirect_to song_path(current_song)
  end

  private

  def current_song
    Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

end
