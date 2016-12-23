class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def create
    @song = Song.new(params.require(:song).permit(:name, :artist_id, :genre_id))
    @song.name = params[:song][:name]
    @song.artist_id = params[:song][:artist_id]
    @song.genre_id = params[:song][:genre_id]
    @song.save
    redirect_to "/songs/#{@song.id}"
  end

  def new
    @song = Song.new
  end

  def show
    #binding.pry
    @song = Song.find_by(params[:id])
    @genre = Genre.find_by(@song.genre_id)
    @artist = Artist.find_by(@song.artist_id)
  end

end
