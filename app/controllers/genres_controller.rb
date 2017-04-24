class GenresController < ApplicationController
  def index
    @genre = Genre.all
  end

  def new
    @genre = Genre.new
    render :form
  end

  def create
    @genre = Genre.new(params.require(:genre).permit(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.all.find_by(id: params[:id])
    render :form
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(params.require(:genre).permit(:name))
    redirect_to genre_path(@genre)
  end

  def show
    @genre = Genre.find(params[:id])
  end
end
