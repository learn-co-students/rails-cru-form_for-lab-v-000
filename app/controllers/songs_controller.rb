class SongsController < ApplicationController

  def index
    @song = Song.all
  end

  def new
    @song = Song.new
  end

   def create
    @song = Song.new(post_params(:song, :name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end

   def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(post_params(:song, :name))
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
  end

end
