class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
