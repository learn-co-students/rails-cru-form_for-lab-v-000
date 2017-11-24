class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
    render '/artists/index.html'
  end

  def show
    @artist = Artist.find(params[:id])
    render '/artists/show.html'
  end

  def new
    @artist = Artist.new
    render '/artists/new.html'
  end
 
  def create
    @artist = Artist.create(post_params)
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
    render '/artists/edit.html'
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(post_params)
    redirect_to artist_path(@artist)
  end
 
  private
    def post_params
      params.require(:artist).permit(:name, :bio)
    end  

end
