class SongsController < ApplicationController
  before_action :get_song, only: [:show, :update, :edit]

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def show
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to song_url(@song)
    else
      render "new"
    end
  end

  def edit
    render "new"
  end

  def update
    if @song.update(song_params)
      redirect_to song_url(@song)
    else
      render "new"
    end
  end

  private
  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

  def get_song
    @song = Song.find(params[:id])
  end
end
