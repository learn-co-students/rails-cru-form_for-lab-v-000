class SongsController < ApplicationController


  def new
    
  end

  def create
    @song = Song.new(post_params)
    @song.save
    redirect_to song_path(@song)
  end

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(post_params)
    @song.save
    redirect_to song_path(@song)
  end

  private

  def post_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end


end
