class SongsController < ApplicationController
  def new
  end

  def create
    @song = Song.create(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
    @genre = Genre.find(@song.genre_id)
    @artist = Artist.find(@song.artist_id)
  end

  def index
    @song = Song.all
  end

  private

  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
