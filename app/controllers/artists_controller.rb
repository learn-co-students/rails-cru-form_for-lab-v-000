class ArtistsController < ApplicationController
  def index
    binding.pry
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(params.required(:artist).permit(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find_by(params[:id])
    @artist.update(artist_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  private

  def artist_params(*args)
    params.required(:artist).permit(*args)
  end
end
#rspec ./spec/features/artist_spec.rb --fail-fast
