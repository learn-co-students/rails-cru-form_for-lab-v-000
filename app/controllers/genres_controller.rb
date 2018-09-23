class GenresController < ApplicationController

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new
    @genre.name = params[:genre][:name]
    if @genre.save
      redirect_to genre_path(@genre)
    end
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(name: params[:genre][:name])
    redirect_to genre_path(@genre)
  end

end
