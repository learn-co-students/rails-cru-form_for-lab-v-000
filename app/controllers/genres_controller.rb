class GenresController < ApplicationController

  def new
    
  end

  def create
    @genre = Genre.new(post_params)
    @genre.save
    redirect_to genre_path(@genre)
  end

  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(post_params)
    @genre.save
    redirect_to genre_path(@genre)
  end

  private

  def post_params
    params.require(:genre).permit(:name)
  end


end
