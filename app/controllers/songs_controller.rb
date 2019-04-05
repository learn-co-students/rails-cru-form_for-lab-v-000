class SongsController < ApplicationController
  # belongs_to :artist

  def show
    @song = Song.find_by(params[:id])
  end
  def index
  end
end
