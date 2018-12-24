class ArtistsController < ApplicationController
  def new
    @artist = Student.new
  end

  def create
    @artist = Student.new(params.require(:artist))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Student.find(params[:id])
  end

  def update
    @artist = Student.find(params[:id])
    @artist.update(params.require(:artist))
    redirect_to artist_path(@artist)
  end

  def index
    @artists = Artist.all
  end

  def show
    @artist = Student.find(params[:id])
  end
end
