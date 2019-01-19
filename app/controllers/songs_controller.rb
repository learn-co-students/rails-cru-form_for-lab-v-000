class SongsController < ApplicationController
  def create
  end

  def show
    @artist = Artist.find(params[:id])
  end
end
