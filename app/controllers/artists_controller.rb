class ArtistsController < ApplicationController

  def index

  end

  def create
    @artist = Artist.new(artist_params)
    @artist.save 
  end

  def show

  end

  def update

  end

  def edit

  end

end
