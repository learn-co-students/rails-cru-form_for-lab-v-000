class ArtistsController < ApplicationController

  def index
    #binding.pry
    @artists = Artist.all
  end

  def create
    @artist = Artist.new(params.require(:artist).permit(:name, :bio))
    @artist.name = params[:artist][:name]
    @artist.bio = params[:artist][:bio]
    @artist.save
    redirect_to "/artists/#{@artist.id}"
  end

  def update
    @artist = Artist.find_by(params[:id])
    @artist.update(params.require(:artist).permit(:name, :bio))
    redirect_to "/artists/#{@artist.id}"
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
  end

end
