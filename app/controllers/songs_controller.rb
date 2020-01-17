class SongsController < ApplicationController
  def create
    @song = Song.create(post_params)
    redirect_to song_path(@song)
  end

  def update
    @song = Song.update(post_params)
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def edit
    @song = Song.find(params[:id])
  end

  def index
    @songs = Song.all
  end

  private

  def post_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
