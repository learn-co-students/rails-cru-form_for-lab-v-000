class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def create
    @genre = Genre.new(params.require(:genre).permit(:name))
    @genre.name = params[:genre][:name]
    @genre.save
    redirect_to "/genres/#{@genre.id}"
  end

  def new
    @genre = Genre.new
  end

  def show
    @genre = Genre.find_by(params[:id])
  end

  def update
    @genre = Genre.find_by(params[:id])
    @genre.update(params.require(:genre).permit(:name))
    redirect_to "/genres/#{@genre.id}"
  end

  def edit
    @genre = Genre.find_by(params[:id])
  end

end
