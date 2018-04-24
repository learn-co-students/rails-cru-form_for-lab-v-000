class ArtistsController < ApplicationController
  before_action :find_artist, only: [:show, :edit, :update]

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(list_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def index
    @artists = Artist.all
  end

  def show
  end

  def edit
  end

  def update
    @artist.update(list_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def destroy
  end

  private 
    def list_params(*args)
      params.require(:artist).permit(*args)
    end

    def find_artist
      @artist = Artist.find(params[:id])
    end
end
