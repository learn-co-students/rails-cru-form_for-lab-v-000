class SongsController < ApplicationController
  def index
    @song = Song.all
  end

  def new
    @song = Song.new
  end

  def show
    @song = Song.find_by(id: params[:id])
  end

  def create
    @song = Song.new(new_params(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find_by(id: params[:id])
  end

  def update
    @song = Song.find_by(id: params[:id])
    @song.update(new_params(:name, :artist_id, :genre_id))

    redirect_to song_path(@song)
  end

  private

  def new_params(*args)
    params.require(:song).permit(*args)
  end
end
