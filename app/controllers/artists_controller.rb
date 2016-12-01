class ArtistsController < ApplicationController
  before_action :find_artist, only: [:show, :edit, :update]

  def show
    #find_artist
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(strong_params)
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    #find_artist
  end

  def update
    @artist.update(strong_params)
    redirect_to artist_path(@artist)
  end

  private

    def find_artist
      @artist = Artist.find(params[:id])
    end

    def strong_params
      params.require(:artist).permit(:name, :bio)
    end
end
