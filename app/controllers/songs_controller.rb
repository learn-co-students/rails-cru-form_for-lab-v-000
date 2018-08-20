class SongsController < ApplicationController

  def index
  end

  def new
    @song = Song.new
  end

  def show
    @song = Song.find_by_id(params[:id])
    @genre = @song.genre
    @artist = @song.artist
  end

  def create
    @song = Song.new(params.require(:song).permit(:name, :genre_id, :artist_id))
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find_by_id(params[:id])
  end

  def update
    @song = Song.find_by_id(params[:id])
    @song.update(params.require(:song).permit(:name, :genre_id, :artist_id))
    redirect_to song_path(@song)
  end


end
