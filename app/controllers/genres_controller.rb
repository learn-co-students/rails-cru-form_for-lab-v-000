class GenresController < ApplicationController
  def create
    @genre =  Genre.create(strong_params(:name))
    if @genre.persisted?
      render :show
    end
  end

  def new
  @genre = Genre.new
  render :form
  end

  def edit
    @genre = set_genre
    render :form
  end

  def show
    @genre = set_genre
  end

  def update
    @genre = set_genre
    @genre.update(strong_params(:name) )
    redirect_to genre_path(@genre)
  end


   private

    def set_genre
      Genre.find_by(params[:id])
    end

    def strong_params(*args)
  params.require(:genre).permit(args)
    end

end
