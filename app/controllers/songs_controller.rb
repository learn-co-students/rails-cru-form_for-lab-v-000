class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
      @song = Song.new(params.require(:song).permit(:name))
      @song.save
      @artist = Artist.find(params[:song][:artist_id])
      @artist.songs << @song
      @genre = Genre.find(params[:song][:genre_id])
      @genre.songs << @song

      redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.update(params[:id], params.require(:song).permit(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end
end
