class ArtistsController < ApplicationController

  def index
    @artist = Artist.all
  end

  def new
    @artist = Artist.new
    #redirect_to artist_post(@artist)
  end

#   def show
#     @artist = Artist.find(params[:id])
#   end

end