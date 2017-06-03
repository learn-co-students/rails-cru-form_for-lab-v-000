class GenresController < ApplicationController
  def create
    @genre = Genre.new(name:params[:genre][:name])
    if @genre.save
      redirect_to genre_path(@genre)
    else
      erb :"/genres/new"
    end
  end

  def update
    @genre = Genre.find_by(id:params[:id])
    @genre.update(name:params[:genre][:name])
    if @genre.save
      redirect_to genre_path(@genre)
    else
      erb :"/genres/update"
    end
  end

  def show
    @genre = Genre.find_by(id:params[:id])
  end

  def edit
    @genre = Genre.find_by(id:params[:id])
  end

  def new
    @genre = Genre.new
  end

  def index
    @genres = Genre.all
  end
end
