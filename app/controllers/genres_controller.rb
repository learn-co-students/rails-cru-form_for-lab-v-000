class GenresController < ApplicationController

  def new
    @genre = Genre.new
  end

  def create
    genre = Genre.create(genre_params)

    redirect_to genre_path(genre)
  end

  def show
    #binding.pry
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    genre = Genre.update(genre_params)

    redirect_to genre_path(genre)
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end
end
