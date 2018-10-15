class SongsController < ApplicationController
  def index
    @songs = Song.all
  end
  
  def show
    @song = Song.find(params[:id])
    @artist = @song.artist
    @genre = @song.genre
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(name: params[:song][:name], artist_id: params[:song][:artist_id], genre_id: params[:song][:genre_id])
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.new
  end

  def update
    @song = Song.find(params[:id])
    @song.update(params.require(:song))
    redirect_to song_path(@song)
  end
end
