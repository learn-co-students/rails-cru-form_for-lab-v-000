require 'pry'

class SongsController < ApplicationController

  def index
    @song = Song.all
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

  def create
    @song = Song.new(song_params)
    @song.save
    redirect_to song_path(@song)
  end

  def update
    @song = Song.find(params[:id])
    @song.update(params.require(:artist))
    redirect_to song_path(@song)
  end

  def school_class_params
    params.require(:song).permit(:title, :room_number)
  end
end
