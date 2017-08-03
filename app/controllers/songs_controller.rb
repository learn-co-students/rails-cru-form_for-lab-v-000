class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params(:name, :artist_id, :genre_id))
    @song.artist = Artist.find_or_create_by(params[:id])
    @song.genre = Genre.find_or_create_by(params[:id])
    @song.save
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    redirect_to song_path(@song)

  end

  private

    def song_params(*args)
      params.require(:song).permit(:name, :artist_name, :genre_name)
    end
end
