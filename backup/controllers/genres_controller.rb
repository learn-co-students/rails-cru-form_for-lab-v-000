class GenresController < ApplicationController
  def create
    #binding.pry
    @genre = Genre.new(params.require(:genre).permit(:name))
    @genre.name = params[:genre][:name]
    @genre.save
    redirect_to "/genres/#{@genre.id}"
  end

  def update
    @genre = Genre.find_by(params[:id])
    @genre.update(params.require(:genre).permit(:name))
    redirect_to genre_path(@genre)
  end

  def show
    @genre = Genre.find_by(params[:id])
    #binding.pry
  end

  def new
    @genre = Genre.new
  end

  def edit
    @genre = Genre.find_by(params[:id])
  end
end
