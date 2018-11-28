class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
  @song = Song.find_by(params[:id])
  end


  def new
    @song = Song.new
  end

  def create
    @song = Song.create(name: params[:song][:name], artist_id: params[:song][:artist_id], genre_id: params[:song][:genre_id])
    redirect_to song_path(@song)
end

def edit
  @song = Song.find_by(params[:id])
end

def update
  @song = Song.find_by(params[:id])
  @song.update(name: params[:song][:name], artist_id: params[:song][:artist_id], genre_id: params[:song][:genre_id])
  redirect_to song_path(@song)
end


end
