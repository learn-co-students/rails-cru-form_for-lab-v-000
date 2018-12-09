class SongsController < ApplicationController
  def index
    @song = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.save

    redirect_to song_path(@song)
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    @song.save

    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def show
    @song = Song.find(params[:id])
    @genre = @song.genre.id
    @artist = @song.artist.id
  end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end


end
