class SiteController < ApplicationController
  def index
    @songs = Song.all
    @artists = Artist.all
    @genre = Genre.all
  end
end
