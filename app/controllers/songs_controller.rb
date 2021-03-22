class SongsController < ApplicationController

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    #binding.pry
    #@song = Song.new
    #@song.name = params[:song][:name]
    #@song.artist_id = params[:song][:artist_id]
    #@song.genre_id = params[:song][:genre_id]
    @song = Song.new(song_params(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    #binding.pry
    @song = Song.find(params[:id])
    #@song.update(name: params[:song][:name], artist_id: params[:song][:artist_id], genre_id: params[:song][:genre_id])
    @song.update(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def index
    @songs = Song.all
  end

  private

  def song_params(*args)
    params.require(:song).permit(*args)
  end

end
