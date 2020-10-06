class GenresController < ApplicationController
  def show 
    @genre = Genre.find(params[:id])
  end

  def new 
    @genre = Genre.new
  end 

  def create 
    @genre = Genre.new(genre_params)
    if @genre.save 
      redirect_to genre_path(@genre)
    else 
      render :new
    end
  end

  def edit 
    @genre = Genre.find_by_id(params[:id])
  end

  def update 
    @genre = Genre.find_by_id(params[:id])
    if @genre.update(genre_params) 
      redirect_to genre_path(@genre)
    else 
      render :new
    end
  end

  private 

  def genre_params
    params.require(:genre).permit(:name)
  end
end
