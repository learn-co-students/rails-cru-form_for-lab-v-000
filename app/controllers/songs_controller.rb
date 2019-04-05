class SongsController < ApplicationController
  # belongs_to :artist

  def show
    @song = Song.find_by(params[:id])
    @genre = Genre.find_by(@song.genre_id.to_s)
    @artist = Artist.find_by(@song.artist_id.to_s)
  end

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(params.require(:song).permit(:name))
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find_by(params[:id])
  end

  def update
    @song = Song.find_by(params[:id])
    @song = Song.update(params.require(:song).permit(:name))
    redirect_to song_path(@song)
  end
end
