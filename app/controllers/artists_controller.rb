require 'pry'
class ArtistsController < ApplicationController

  def show
    @artist = Artist.find_by(id: params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(name: params[:artist][:name], bio: params[:artist][:bio])
    redirect_to "/artists/#{@artist.id}"
  end

  def edit
  end

  def update
  end

end
