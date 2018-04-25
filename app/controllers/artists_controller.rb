class ArtistsController < ApplicationController

  def new
  end

  def show
  end

  def create
  end

  def update
  end

  private
  
  def artist_params(*args)
    params.require(:artist).permit(*args)
  end




end
