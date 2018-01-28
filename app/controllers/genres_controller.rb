class GenresController < ApplicationController

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def create
    @genre = Genre.new(params.require(:genre).permit(:name))
    if @genre.save
      redirect_to genre_path(@genre)
    else
      render :new
    end
  end

  def update
    @genre = Genre.find(params[:id])
    if @genre.update(params.require(:genre).permit(:name))
      redirect_to genre_path(@genre)
    else
      render :edit
    end
  end
end
