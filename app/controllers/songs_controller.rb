class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
    @song_artist = Artist.find(@song.artist_id).name
    @song_genre = Genre.find(@song.genre_id).name

  end

  def new
    @song = Song.new
  end

  def edit
    @song = Song.find(params[:id])
  end

  def create

    @song = Song.new(params.require(:song).permit(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end

  def update
    @song = Song.find(params[:id])
    @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end
end
