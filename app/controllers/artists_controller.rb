class ArtistsController < ApplicationController


  [:new, :create, :edit, :update, :show, :index]

  def index
    @artist = Artist.all
  end

  def new
    @artist= Artist.create(artist_params(:name,:bio))
    redirect_to artist_path(@artist)
  end

  def create
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
  end

  def update
  end

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end
