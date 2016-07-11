class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(get_params[:name])
    @song.save
    redirect_to song_path(@song)
  end

  def edit
  end

  def update
    @song = Song.find(params[:id])
    @song.update(params.require(:song))
  end

  def show
    @song = Song.find(params[:id])
    @artist = @song.artist
    @genre = @song.genre
  end

  private

  def get_params(*args)
    params.require(:song).permit(*args)
  end
end
