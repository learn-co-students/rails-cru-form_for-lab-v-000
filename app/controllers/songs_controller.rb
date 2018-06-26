class SongsController < ApplicationController
  def show
    @song = Song.find_by(id: params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_param)
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find_by(id: params[:id])
  end

  private

  def song_param
    params.require(:song).permit(:name, :genre_id, :artist_id)
  end
end
