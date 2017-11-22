class ArtistsController < ApplicationController

  before_action :set_artist, only: [:show, :edit, :update]

  def index
    @artists = Artist.all
  end

  def show
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(post_params)
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
  end

  def update
    @artist.update(post_params)
    redirect_to artist_path(@artist)
  end

  private

    def set_artist
      @artist = Artist.find(params[:id])
    end

    def post_params
      params.require(:artist).permit(:name, :bio)
    end

end
