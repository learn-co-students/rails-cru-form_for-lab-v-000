class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update]

  #def show
  #end

  #def edit
  #end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(require_params(:name, :bio))
    redirect_to_show
  end

  def update
    @artist.update(require_params(:name, :bio))
    redirect_to_show
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def require_params(*args)
    params.require(:artist).permit(*args)
  end

  def redirect_to_show
    redirect_to artist_path(@artist)
  end
end
