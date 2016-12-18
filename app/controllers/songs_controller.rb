class SongsController < ApplicationController
  def show
    @song = Song.find_by(id: params[:id])
  end

  def new
  end

  def edit
    @song = Song.find_by(id: params[:id])
  end

  def create

    @song = Song.create(params.require(:song).permit(:name))
    @song.artist = Artist.find_by(params[:song][:artist_id])
    @song.genre = Genre.find(params[:song][:genre_id])
    @song.save
    redirect_to song_path(@song)
  end

  def update
    @song = Song.find_by(id: params[:id])
    @song.update(params.require(:song).permit(:name, :genre_id, :song_id))
    redirect_to song_path(@song)
  end

  def index
    @songs = Song.all
  end
end
