class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new

  def create
  end

  def show
    @song = Song.find_by(params[:id])
  end

  def update
    @song = Song.find_by(params[:id])
  end
end
