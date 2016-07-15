class GenresController < ApplicationController

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(post_params(:genre, :name))
    redirect_to(genre_path(@genre))
  end

  def edit
    find_genre
  end

  def update
    find_genre
    @genre = Genre.update(@genre.id, post_params(:genre, :name))
    redirect_to(genre_path(@genre))
  end

  def show
    find_genre
  end
  
private

  def find_genre
    @genre = Genre.find(params[:id])
  end

end
