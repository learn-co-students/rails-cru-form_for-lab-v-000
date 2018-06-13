class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def create

  end

  def new
    Artist.new
  end

  def edit

  end

  def show

  end

  def update

  end

  def destroy

  end

end

private

  def strong_params

  end
