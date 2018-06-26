class GenresController < ApplicationController

  def new
    @genre = Genre.new
  end

  def show
    @genre = Genre.find_by(id: params[:id])
  end

  def create
    @genre = Genre.create(genre_param)
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find_by(id: params[:id])
  end

  def update
    @genre = Genre.find_by(id: params[:id])
    @genre.update(genre_param)
    redirect_to genre_path(@genre)
  end

  private

  def genre_param
    params.require(:genre).permit(:name)
  end
end
