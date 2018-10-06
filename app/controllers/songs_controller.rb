class SongsController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update]
  def new
    @song = Song.new
  end
  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to song_path(@song)
    else
      render "new"
    end
  end

  def index
    @songs = Song.all
  end

  def show
  end

  def edit
    render "new"
  end
  def update
    if @song.update(song_params)
      redirect_to song_path(@song)
    else
      render "edit"
    end
  end

  private
  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
  def set_params
    @song = Song.find(params[:id])
  end
end
