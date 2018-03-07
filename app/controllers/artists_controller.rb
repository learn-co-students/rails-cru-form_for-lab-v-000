class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
  end

  def create
  end

  def edit
    set_artist
  end

  def update
    set_artist
  end

  private

  def set_artist
    @artist = Artist.find(:id)
  end


end
