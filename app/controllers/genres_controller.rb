class GenresController < ApplicationController
  def new
  end

  def create
    @genre = Genre.create(post_params)
    redirect_to genre_path(@genre)
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.create(post_params)
    redirect_to genre_path(@genre)
  end
  
  private
  def post_params
    params.require(:genre).permit(:name)
  end
end
