class GenresController < ApplicationController

  def create
    @genre = Genre.new(params.require(:genre).permit(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(params.require(:genre).permit(:name))
    redirect_to genre_path(@genre)
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def edit
    @genre = Genre.find(params[:id])
  end

end
