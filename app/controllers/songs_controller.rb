class SongsController < ApplicationController
  def create
    @song = Song.create(params.require(:song).permit(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def new
    @song = Song.new
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
    @artist = Artist.find(@song.artist_id) if @song.artist_id
    @genre = Genre.find(@song.genre_id) if @song.genre_id
  end

  def index
    @songs = Song.all
  end
end
