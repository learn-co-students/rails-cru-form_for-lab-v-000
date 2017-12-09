class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.save
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    @song.save
    redirect_to song_path(@songs)
  end

  def show
    @song = Song.find(params[:id])

  private

  def song_params
    params.requre(:song).permit(:name, :artist_id, :genre_id)
  end
end
