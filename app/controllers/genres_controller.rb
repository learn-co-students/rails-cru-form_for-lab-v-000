class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(post_params(:name))
    redirect_to genre_url(@genre)
  end

  def edit
    @genre = Genre.find_by_id(params[:id])
  end

  def update
    @genre = Genre.find_by_id(params[:id])
    @genre.update(post_params(:name))
    redirect_to genre_url(@genre)
  end

  def show
    @genre = Genre.find_by_id(params[:id])
  end

  private

  def post_params(*args)
    params.require(:genre).permit(*args)
  end

end
