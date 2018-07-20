class GenresController < ApplicationController
  def index
    @genre = Grene.all
  end

  def show
    @genre = Genre.find_by(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find_by(params[:id])
  end

  def update
    @genre = Genre.find_by(params[:id])
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end

  private
    def genre_params
      params.require(:genre).permit(:name)
    end
end
