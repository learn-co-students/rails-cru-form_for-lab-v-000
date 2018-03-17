class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(post_params(:name))
    redirect_to @genre
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    Genre.update(@genre, post_params(:name))
    redirect_to @genre
  end

  private

  def post_params(*args)
    params.require(:genre).permit(*args)
  end
end
