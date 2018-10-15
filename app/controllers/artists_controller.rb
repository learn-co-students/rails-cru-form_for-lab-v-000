class ArtistsController < ApplicationController
  def create
    @artist = Artist.create(name: params[:artist][:name], bio: params[:artist][:bio])
    # @artist = Artist.new
    # @artist.name = params[:artist][:name]
    # @artist.bio = params[:artist][:bio]
    # @artist.save
    redirect_to "/artists/#{@artist.id}"
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(params.require(:artist))
    redirect_to "/artists/#{@artist.id}"
  end

  def show
    @artist = Artist.find(params[:id])
  end
end
