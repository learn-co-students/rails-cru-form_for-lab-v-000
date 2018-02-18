class SongsController < ApplicationController

  def index
    @song = Song.all
  end

  def new
    @song = Song.new
  end

  def edit
    song
  end

  def create
    @song = Song.new(song_params(:name, :bio))
	  @song.save
	  redirect_to song_path(@song)
  end

  def update
    song
    @song.update(song_params(:name, :bio))
	  redirect_to song_path(@song)
	end

  def show
    song
    genre
    artist
  end

  private
  def song_params(*args)
    params.require(:song).permit(*args)
  end

  def song
    @song = Song.find(params[:id])
  end

  def genre
    @genre = Genre.find(params[:id])
  end

  def artist
    @artist = Artist.find(params[:id])
  end

end
