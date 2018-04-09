class ArtistsController < ApplicationController
  # def index
  # end

  def show
    set_artist
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
end
