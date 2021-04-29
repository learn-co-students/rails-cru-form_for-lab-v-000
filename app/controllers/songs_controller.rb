class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
    @artists = Artist.all
    @genres = Genre.all
  end

  def create
    @song = Song.new(params_song(:name))
    @song.artist = Artist.find(params_song(:artist_id)["artist_id"].to_i)
    @song.genre = Genre.find(params_song(:genre_id)["genre_id"].to_i)
    @song.save
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
    @artists = Artist.all
    @genres = Genre.all
  end

  def update
    @song = Song.find(params[:id])
    @song.update(params_song(:name))
    artist = Artist.find(params_song(:artist_id)["artist_id"].to_i)
    genre = Genre.find(params_song(:genre_id)["genre_id"].to_i)
    @song.update(artist: artist, genre: genre)
    redirect_to song_path(@song)
  end

  private

  def params_song(*args)
    params.require(:song).permit(*args)
  end
end
