class GenresController < ApplicationController

  def show
		@genre = Genre.find(params[:id])
	end

	def new
		@genre = genre.new
	end

	def create
		@genre = genre.create(params.require(:genre).permit(:name))
		@genre.save
		redirect_to genre_path(@genre)
	end

	def update
		@genre = genre.find(params[:id])
  	@genre.update(params.require(:genre).permit(:name))
  	redirect_to genre_path(@genre)
	end

	def edit
	  @genre = genre.find(params[:id])
	end
end
