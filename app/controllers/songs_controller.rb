class SongsController < ApplicationController
  before_filter :load_song, only: [:show, :edit, :update]

  def index
    @songs = Song.all
  end

  def show
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
  end

  def update
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  private
  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

  def load_song
    @song = Song.find(params[:id])
  end
end
