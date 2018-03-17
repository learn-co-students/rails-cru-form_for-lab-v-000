class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    select_song
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    select_song
  end

  def update
    select_song
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  private

  def select_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
