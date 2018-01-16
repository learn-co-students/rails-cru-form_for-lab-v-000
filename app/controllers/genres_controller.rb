class GenresController < ApplicationController

  def index
    @genre = Genre.new
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  def show
    @genre = Genre.find_by(params[:id])
  end

  def edit
    @genre = Genre.find_by(params[:id])
  end

  def update
    @genre = Genre.find_by(params[:id])
    @genre.update(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  private

  def genre_params(*args)
    params.require(:genre).permit(*args)
  end

end
