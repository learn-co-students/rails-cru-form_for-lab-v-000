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
    parameters = params.require("song").permit(:name, :artist_id, :genre_id)
    @song = Song.create(parameters)
    redirect_to song_path(@song)
  end
  
  def edit
    @song = Song.find(params[:id])
  end
  
  def update
    parameters = params.require("song").permit(:name, :artist_id, :genre_id)
    @song = Song.find(params[:id])
    @song.update(parameters)
    redirect_to song_path(@song)
    
  end
  
end