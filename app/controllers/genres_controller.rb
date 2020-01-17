class GenresController < ApplicationController
  def create
    @genre = Genre.create(post_params)
    redirect_to genre_path(@genre)
  end

  def update
    @genre = Genre.update(post_params)
    redirect_to genre_path(@genre)
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  private

  def post_params
    params.require(:genre).permit(:name)
  end
end
