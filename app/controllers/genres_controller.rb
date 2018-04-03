class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def show
    @genre = found_params
  end

  def edit
    @genre = found_params
  end

  def update
    @genre = found_params
    @genre.update(genre_params(:name))
  end

  private

  def genre_params(*args)
    params.require(:genre).permit(*args)
  end

  def found_params
    Genre.find(params[:id])
  end
end
