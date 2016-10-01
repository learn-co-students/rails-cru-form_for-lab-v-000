class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(post_params)
    redirect_to song_url(@song)
  end

  def edit
    @song = Song.find_by_id(params[:id])
  end

  def update
    @song = Song.find_by_id(params[:id])
    @song.update(post_params)
    redirect_to song_url(@song)
  end

  def show
    @song = Song.find_by_id(params[:id])
    @genre = Genre.find_by_id(@song.genre_id)
    @artist = Artist.find_by_id(@song.artist_id)
  end

  def post_params
    params.require(:song).permit(:name, :genre_id, :artist_id)
  end

end
