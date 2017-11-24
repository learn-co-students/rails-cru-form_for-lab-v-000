require 'pry'

class ArtistsController < ApplicationController

  def new #for new form (GET)
    @artist = Artist.new
  end

  def create #for new POST
    @artist = Artist.create(name: params[:artist][:name], bio: params[:artist][:bio])
    redirect_to artist_path(@artist)
  end

  def edit #for edit form (GET)
    @artist = Artist.find(params[:id])
  end

  def update #for edit POST
    @artist = Artist.find(params[:id])
    @artist.update(post_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def show
    @artist = Artist.find(params[:id])
  end

end
