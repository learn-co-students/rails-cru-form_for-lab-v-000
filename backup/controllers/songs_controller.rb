class SongsController < ApplicationController
  def index
    #binding.pry
  end

  def create
    @song = Song.new(params.require(:song).permit(:name, :artist_id, :genre_id))
    @song.name = params[:song][:name]
    @song.artist_id = params[:song][:artist_id]
    @song.genre_id = params[:song][:genre_id]
    @song.save
    redirect_to "/songs/#{@song.id}"
  end

  def update
    @song = Song.find_by(params[:id])
    @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find_by(params[:id])
    @genre = Genre.find_by(@song.genre_id)
    @artist = Artist.find_by(@song.artist_id)
    #binding.pry
  end

  def new
    @song = Song.new
  end

  def edit
    @song = Song.find_by(params[:id])
    #binding.pry
  end
end
