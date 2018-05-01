class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end#new

  def create
    @genre = Genre.new(genre_params)
    @genre.save

    redirect_to genre_path(@genre)
  end#create

  def edit
    @genre = Genre.find(params[:id])
  end#edit

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)

    redirect_to genre_path(@genre)
  end#

  def destroy
  end#

  def index
    @genres = Genre.all
  end#index

  def show
    @genre = Genre.find(params[:id])
  end#show

  private

  def genre_params
    params.require(:genre).permit(:name)
  end#params
end#class
