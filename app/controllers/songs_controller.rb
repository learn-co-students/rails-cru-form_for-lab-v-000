class SongsController < ApplicationController
  def show
    @song = Song.find_by(id: params[:id])
  end

  def new
    @song = Song.new
  end

  def edit
    @song = Song.find_by(id: params[:id])
  end

  def create
    @song = Song.create(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end
end

private

def song_params(*args)
   params.require(:song).permit(*args)
end
