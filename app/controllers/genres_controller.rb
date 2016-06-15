class GenresController < ApplicationController
 
  def index
    @genres = Genre.all
    render '/genres/index.html'
  end

  def new
    @genre = Genre.new
    render '/genres/new.html'
  end

  def show
    @genre = Genre.find(params[:id])
    # render '/genres/show.html'
  end

  def create
    @genre = Genre.create(post_params)
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find(params[:id])
    render '/genres/edit.html'
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(post_params)
    redirect_to genre_path(@genre)
  end
 
  private
    def post_params
      params.require(:genre).permit(:name)
    end  

end