class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
	end

	def new
    @genre = Genre.new #for form_for
	end

  def create
    @genre = Genre.new(genre_params)
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end

  private
    def genre_params
      params.require(:genre).permit(:name) #strong params
    end
end