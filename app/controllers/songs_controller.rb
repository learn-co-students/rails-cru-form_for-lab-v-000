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
    @song = Song.create(strong_params(:song,:name))
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Artist.find(params[:id])
    @song.update(strong_params(:song,:name))
    redirect_to artist_path(@song)
  end
end
