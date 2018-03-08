class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    set_song
    if Artist.find_by(:id => @song.artist_id)
      @artist = Artist.find_by(:id => @song.artist_id)
    end
    if Genre.find_by(:id => @song.genre_id)
      @genre = Genre.find_by(:id => @song.genre_id)
    end
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params(:name))
    @song.artist = Artist.find_or_create_by(:name => params[:song][:artist])
    @song.genre = Genre.find_or_create_by(:name => params[:song][:genre])
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    set_song
  end

  def update
    set_song
    @song.update(song_params(:name, :bio))
    redirect_to song_path(@song)
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params(*args)
    params.require(:song).permit(*args)
  end

end
