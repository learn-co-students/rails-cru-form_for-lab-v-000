class SongsController < ApplicationController
  def index
    @songs = Song.all
  end
  
  def new
  end
  
  def show
    @song = Song.find(params[:id])
    @genre = Genre.find(@song.genre_id)
    @artist = Artist.find(@song.artist_id)
  end
  
  def create
    @song = Song.new(song_params(:name, :genre_id, :artist_id))
    @artist = Artist.find(params[:song][:artist_id])
    @genre = Genre.find(params[:song][:genre_id])
    @song.artist = @artist
    @song.genre = @genre
    @artist.songs << @song    
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end
  
  def update
    @song = Song.find(params[:id])
    @artist = Artist.find(params[:song][:artist_id])
    @song.update(song_params(:name, :genre_id, :artist_id))
    @song.artist = @artist
    @song.genre = @genre
    redirect_to song_path(@song)
  end
  
  private
  def song_params(*args)
    params.require(:song).permit(*args)
  end
  
end
