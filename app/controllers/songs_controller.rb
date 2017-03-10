class SongsController < ApplicationController
  def create
    @song = Song.create(name: params[:song][:name], artist_id: params[:song][:artist_id], genre_id: params[:song][:genre_id])
    @genre = @song.genre
    @artist = @song.artist
    redirect_to song_path(@song)
  end

  def update
    @song = Song.find(params[:id])
    @song.update(name: params[:song][:name], artist_id: params[:song][:artist_id], genre_id: params[:song][:genre_id])
    redirect_to songs_path(@song)
  end

  def show
    @song = Song.find(params[:id])
    @genre = @song.genre
    @artist = @song.artist
  end

  def edit
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def index
    @songs = Song.all
  end

  private

  def post_params(*args)
    params.require(:song).permit(*args)
  end
end
