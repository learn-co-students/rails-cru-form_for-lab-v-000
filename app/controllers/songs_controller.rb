class SongsController < ApplicationController
  def show
    @song = Song.find(params.require(:id))
  end

  def new
    @song = Song.new
  end

  def create
    if @song = Song.create(song_params)
      redirect_to song_path(@song)
    else
      redirect_to new_song_path
    end
  end

  def edit
    @song = Song.find(params_id)
  end

  def update
    @song = Song.find(params_id)
    if @song.update(song_params)
      redirect_to song_path(@song)
    else
      redirect_to edit_song_path(@song)
    end
  end

  def index
    @songs = Song.all
  end

  private

    def song_params
      params.require(:song).permit(:name, :artist_id, :genre_id)
    end

    def params_id
      params.require(:id)
    end
end