class SongsController < ApplicationController

  def index
  end

  def new
    @song = Song.new
  end

  def create

  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update

  end
  
end
