class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(permit_params(:genre, :name))
  	@genre.save
  	redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.create(permit_params(:genre, :name))
    redirect_to genre_path(@genre)
  end
end
