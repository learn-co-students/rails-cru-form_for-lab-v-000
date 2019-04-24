class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params(:name))
    @artist = Artist.find_or_create_by(name: song_params(:artist)["artist"])
    @genre = Genre.find_or_create_by(name: song_params(:genre)["genre"])
    @song.artist = @artist
    @song.genre = @genre
    @song.save
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
   @song = Song.find(params[:id])
   @song.update(name: song_params(:name)["name"], artist_id: song_params(:artist_id)["artist_id"], genre_id: song_params(:genre_id)["genre_id"])
   redirect_to song_path(@song)
  end

  private

  def song_params(*args)
    params.require(:song).permit(*args)
  end

end
