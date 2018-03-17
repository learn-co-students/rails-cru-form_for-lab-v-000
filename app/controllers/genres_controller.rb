class GenresController < ApplicationController

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(params_strong(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(params_strong(:name))
    redirect_to genre_path(@genre)
  end

  private

  def params_strong(*args)
    params.require(:genre).permit(*args)
  end

end
