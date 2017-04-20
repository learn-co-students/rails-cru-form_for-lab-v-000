class SongsController < ApplicationController

  def create
    @song = Song.create(name: params[:song][:name], genre_id: params[:song][:genre_id], artist_id: params[:song][:artist_id])
    redirect_to song_path(@song)
  end

  def index
  end

  def update
    @song = Song.find(params[:id])
    @song.update(post_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

end
