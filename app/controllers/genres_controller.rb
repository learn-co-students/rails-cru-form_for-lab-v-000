class GenresController < ApplicationController
  before_action :set_genre, only: [:show, :edit, :update ]
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
    render :form
  end

  def show
  end

  def update
    @genre.update(strong_params(:name) )
    redirect_to genre_path(@genre)
  end


   private

    def set_genre
    @genre =  Genre.find_by(params[:id])
    end

    def strong_params(*args)
  params.require(:genre).permit(args)
    end

end
