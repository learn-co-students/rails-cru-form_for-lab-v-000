class GenreController < ApplicationController
  def index
    @genres = Genre.all
  end

  def create
    @genre = Genre.new(genre_params)
    @genre.save
    redirect_to @genre
  end

  def new
    @genre = Genre.new
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    redirect_to @genre
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def show
    @genre = Genre.find(params[:id])
  end

  private
   
    def genre_params
      params.require(:genre).permit(:name)
    end
end
