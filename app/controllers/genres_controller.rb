class GenresController < ApplicationController
  def new
  end

  def create
    @genre = Genre.create(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  def show
    @genre = Genre.find(params[:id])
  end

  private

  def genre_params(*args)
    params.require(:genre).permit(*args)
  end
end
