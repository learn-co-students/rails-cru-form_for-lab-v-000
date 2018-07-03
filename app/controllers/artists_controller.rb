class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end
  
  def show
    find_artist
  end

  def new
  end

  def create
    @artist = Artist.create(pass_params)
    
    redirect_to @artist
  end


  def edit
    find_artist
  end

  def update
    find_artist
    @artist.update(pass_params)

    redirect_to @artist
  end

  private
    def find_artist
      @artist = Artist.find(params[:id])
    end

    def pass_params
      params.require(:artist).permit(:name, :bio)
    end
end
