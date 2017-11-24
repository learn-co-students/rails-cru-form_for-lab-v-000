class ArtistsController < ApplicationController

# ---------- READ -----------
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find_by(id: params[:id])
  end

# ---------- CREATE -----------
  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(dynamic_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

# ---------- UPDATE -----------

  def edit
    @artist = Artist.find_by(id: params[:id])
  end

  def update
    @artist = Artist.find_by(id: params[:id])
    @artist.update(dynamic_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  private

  def dynamic_params(*args)
    params.require(:artist).permit(*args)
  end
end
