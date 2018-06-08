class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def edit
    @song = find_song(params)
  end

  def update
    @song = find_song(params)
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  def show
    @song = find_song(params)
  end

  private
  def find_song(params)
    Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
