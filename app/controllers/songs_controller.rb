class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
  end

  def create
    song = Song.new
    song.name = params[:song][:name]
    song.artist = Artist.find_by_id(params[:song][:artist_id])
    song.genre = Genre.find_by_id(params[:song][:genre_id])
    song.save
    redirect_to song_path(song)
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(name: params[:song][:name])
    redirect_to song_path(@song)
  end
end
