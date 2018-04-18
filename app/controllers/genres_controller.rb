class GenresController < ApplicationController
    
  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end
  
  def create
    @genre = Genre.new(genre_params)
    redirect_to genre_path(@genre) if !!@genre.save
  end
  
  def show
    @genre = Genre.find_by(:id => params["id"])
  end
  
  def edit
    @genre = Genre.find_by(:id => params["id"])
  end
  
  def update
    @genre = Genre.update(params["id"], genre_params)
    redirect_to genre_path(@genre)
  end
  
  private
  
  def genre_params(*args)
    params.require(:genre).permit(:name)
  end
end
