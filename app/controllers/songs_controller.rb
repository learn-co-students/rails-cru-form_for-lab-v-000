require 'pry'
class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = Song.all
  end

  def new
      @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.save
    if @song.genre_id
      @song.genre = Genre.find_or_create_by(id: params[:song][:genre_id])
    end

    if @song.artist_id
      @song.artist = Artist.find_or_create_by(id: params[:song][:artist_id])
    end
    # binding.pry
    redirect_to song_path(@song)
  end

  def edit
  end

  def update
    @song.update(song_params)

    redirect_to song_path(@song)
  end

  def show
    # binding.pry
    @genre = @song.genre
    @artist = @song.artist
  end

  def destroy
    @song.destroy
  end

  private

    def set_song
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
