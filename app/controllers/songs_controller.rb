class SongsController < ApplicationController
  def index
    @songs = Song.all
  end#index

  def new
   @song = Song.new
  end#new

  def create
   @song = Song.new(song_params(:name, :genre_id, :artist_id))
   @song.save

   redirect_to song_path(@song)
  end#create

  def show
    @song = Song.find(params[:id])
    @genre = @song.genre
  end#show

  def edit
   @song = Song.find(params[:id])
  end#edit

  def update
   @song = Song.find(params[:id])
   @song.update(song_params(:name, :genre_id, :artist_id))

   redirect_to song_path(@song)
  end#

  def song_params(*args)
  params.require(:song).permit(*args)
  end#params
end#class
