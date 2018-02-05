class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.new(params.require(:song).permit(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song.id)
  end

  def update
    @song = Song.find(params[:id])
    @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song.id)
  end
end
