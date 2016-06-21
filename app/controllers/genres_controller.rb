class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def create
    @genre = Genre.create(get_params(:name))
    @genre.save

    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(get_params(:name))

    redirect_to genre_path(@genre)
  end

  private

  def get_params(*args)
    params.require(:genre).permit(*args)
  end
end
