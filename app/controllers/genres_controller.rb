class GenresController < ApplicationController
#receives get  request route for show all index
  def index
      @genres = Genre.all
  end
  #receives get request  route for show instance
  def show
      @genre = Genre.find(params[:id])
  end
  #receives get request  route for new instance form
  def new
      @genre = Genre.new
  end
  ##receives get  request route for edit instance form
  def edit
    @genre = Genre.find(params[:id])

  end
  #handles post request from new form to create the instance and persist to db
  def create
    #strong params
      @genre = Genre.new(genre_params(:name))
      @genre.save
      redirect_to genre_path(@genre)
  end
  #handles patch request from edit form to persist to db
  def update
      @genre = Genre.find(params[:id])
      @genre.update(genre_params(:name))
      redirect_to genre_path(@genre)
  end

  private
  #strong params
  def genre_params(*args)
      params.require(:genre).permit(*args)
  end
end
