class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
  end

  def create
    @song = Song.create(pass_params)

    redirect_to @song
  end

  def show
    find_song
  end

  def edit
    find_song
  end

  def update
    find_song
    @song.update(pass_params)

    redirect_to @song
  end

  private
    def find_song
      @song = Song.find(params[:id])
    end

    def pass_params
      params.require(:song).permit(:name, :genre_id, :artist_id)
    end
end
