class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    song = Song.new(song_params(:name, :artist, :genre))
    song.artist = Artist.find_by(name: params[:song][:artist]) || Artist.create(name: params[:song][:artist])
    song.genre = Genre.find_by(name: params[:song][:genre]) || Genre.create(name: params[:song][:genre])
    song.save
    redirect_to song_path(song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    song = Song.find(params[:id])
    song.update(song_params(:name))
    redirect_to song_path(song)
  end

  private
    def song_params(*args)
      params.require(:song).permit(*args)
    end
end
