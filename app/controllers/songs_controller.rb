class SongsController < ApplicationController

  def index
    @songs = Songs.all
  end

  def show
    @song = Song.find(params[:id])
  end

end
