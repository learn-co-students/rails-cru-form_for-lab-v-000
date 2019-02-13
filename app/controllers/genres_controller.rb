class GenresController < ApplicationController
  def new
  end

  def index
    @genres = Genre.all
  end

  def edit
  	@genre = Genre.find(params[:id])
  end

  def show
  	@genre = Genre.find(params[:id])
  end

  def create
  	@genre = Genre.new(params.require(:genre).permit(:name))
  	@genre.save

  	redirect_to genre_path(@genre)
  end

  def update
  	@genre = Genre.find(params[:id])
  	@genre.update(params.require(:genre).permit(:name))

  	redirect_to genre_path(@genre)
  end
end
