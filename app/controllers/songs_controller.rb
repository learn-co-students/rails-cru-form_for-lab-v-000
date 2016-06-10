class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    current_song
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def edit
    current_song
  end

  def update
    current_song.update(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path(current_song)
  end

  private

  def song_params(*args)
    params.require(:song).permit(*args)
  end

  def current_song
    @song = Song.find(params[:id])
  end

end
