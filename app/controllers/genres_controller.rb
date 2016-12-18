class GenresController < ApplicationController
  def show
    @genre = Genre.find_by(id: params[:id])
  end

  def new
  end

  def edit
    @genre = Genre.find_by(id: params[:id])
  end

  def create
    @genre = Genre.create(params.require(:genre).permit(:name))
    redirect_to genre_path(@genre)
  end

  def update
    @genre = Genre.find_by(id: params[:id])
    @genre.update(params.require(:genre).permit(:name))
    redirect_to genre_path(@genre)
  end

  def index
  end
end
