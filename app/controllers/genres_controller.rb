class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
   @genre = Genre.new(genre_params)
   @genre.save
   redirect_to genre_path(@genre)
  end

  def show
    @genre = Genre.find_by(params[:id])
  end

  def edit
    get_genre
  end

  def update
    get_genre
    @genre.update(genre_params)
    @genre.save
   redirect_to genre_path(@genre)
  end

  def delete
    get_genre
    @genre.delete
    redirect_to genre_path
  end

  private

  def genre_params(*args)
   params.require(:genre).permit(:name)
  end

  def get_genre
   @genre = Genre.find_by(params[:id])
  end

end
