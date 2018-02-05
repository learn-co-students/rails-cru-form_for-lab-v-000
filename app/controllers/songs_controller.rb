class SongsController < ApplicationController
  before_action :load_song, only: [:show, :update, :edit]

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
    if @song.save
      redirect_to song_path(@song)
    else
      redirect_to new_song_path
    end
  end

  def edit
  end

  def update
    if @song.update(song_params)
      redirect_to song_path(@song)
    else
      redirect_to edit_song_path(@song)
    end
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

  def load_song
    @song = Song.find(params[:id])
  end
end
