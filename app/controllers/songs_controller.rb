class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find_by(id: params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new
    @song.name = params[:song][:name]
    @song.genre = Genre.find(params[:song][:genre_id])
    @song.artist = Artist.find(params[:song][:artist_id])
    @song.save

    redirect_to song_path(@song.id)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    name = params[:song][:name]
    genre = Genre.find(params[:song][:genre_id])
    artist = Artist.find(params[:song][:artist_id])

    @song.update(name: name, genre: genre, artist: artist)
    redirect_to song_path(@song.id)
  end
end
