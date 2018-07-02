class SongsController < ApplicationController
  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params(:name, :genre_id, :artist_id))
    redirect_to song_path(@song)
  end

  def edit
    @song = find
  end

  def update
    @song = find
    @song.update(song_params(:name, :genre_id, :artist_id))
    redirect_to song_path(@song)
  end

  def show
    @song = find
  end

  def index
    @songs = Song.all
  end

  private

  def find
    Song.find(params[:id])
  end

  def song_params(*args)
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
