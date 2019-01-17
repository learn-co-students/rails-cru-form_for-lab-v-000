class SongsController < ApplicationController

  def index

  end

  def create

  end

  def new

  end

  def edit

  end

  def show
    @song = Song.find(params[:id])
  end

  def update

  end

  def destroy

  end
end
