class ArtistController < ApplicationController
  def create
    @artist = Artist.new
    @artist.name = params[:artist][:name]
    @artist.bio = params[:artist][:bio]
    @artist.save
    redirect_to "/artists/#{@artist.id}"
    #binding.pry
  end

  def update
    @artist = Artist.find_by(params[:id])
  end

  def show
    #binding.pry
    @artist = Artist.find_by(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def edit
    @artist = Artist.find_by(params[:id])
    binding.pry
  end
end
