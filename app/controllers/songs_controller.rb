class SongsController < ApplicationController

  def show
    @song = current_song
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(params_path)
    redirect_to song_path(@song)
  end

  def edit
    @song = current_song
  end

  def update
    @song = current_song
    @song.update(params_path)
    redirect_to song_path(@song)
  end

  def index
    @songs = Song.all
  end

  private

    def current_song
      Song.find(params[:id])
    end

    def params_path
      params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
