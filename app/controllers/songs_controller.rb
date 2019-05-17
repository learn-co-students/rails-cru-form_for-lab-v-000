class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
    @genre = @song.genre_id
    @artist = @song.artist_id
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  private

  def song_params
    params.require(:song).permit(:name)
  end
end
