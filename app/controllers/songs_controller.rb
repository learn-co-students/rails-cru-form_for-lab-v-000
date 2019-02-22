class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(post_params)
    @song.save
    redirect_to songs_path(@song)
  end

  def edit
    find_song
  end

  def update
    find_song
    @song.update(post_params)
    redirect_to song_path(@song)
  end

  private

  def find_song
    @song = Song.find(params[:id])
  end

  def post_params(*args)
    params.require(:song).permit(:name, :bio)
  end
end
