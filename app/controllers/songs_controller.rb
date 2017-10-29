class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(post_params(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end

  def edit

  end

  def update

  end

  private

  def post_params(*args)
    params.require(:song).permit(*args)
  end
end
