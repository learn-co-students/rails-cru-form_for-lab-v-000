class GenresController < ApplicationController

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_params)
    redirect_to genre_path(@genre)
  end

  def show
    genre
  end

  def edit
    genre
  end

  def update
    genre.update(genre_params)
    redirect_to genre_path(@genre)
  end

  private

  def genre
    @genre = Genre.find(params[:id])
  end

  def genre_params
    params.require(:genre).permit(:name)
  end

end
