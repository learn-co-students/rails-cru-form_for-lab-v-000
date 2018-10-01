class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
    @genre = Genre.find(@song.id)
    @artist = Artist.find(@song.id)
  end

  def new
    @song = Song.new(params[:song])
  end

  def index
    @songs = Song.all
  end

  def create
    @song = Song.new(params.require(:song).permit(:name))
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(params.require(:song).permit(:name))
    redirect_to song_path(@song)
  end
end
