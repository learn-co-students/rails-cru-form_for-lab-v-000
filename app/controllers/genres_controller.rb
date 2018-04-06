class GenresController < ApplicationController
	def show
		@genre = Genre.find_by(params[:id])
	end  

	def new
		@genre = Genre.new
	end 

	def create
		@genre = Genre.create(genre_params(:name, :bio))
		redirect_to genre_path(@genre)
	end

	def update
		@genre = Genre.find(params[:id])
		@genre.update(genre_params(:name, :bio))
		redirect_to genre_path(@genre)
	end 

	def edit
		@genre = Genre.find_by(params[:id])
	end 


	private
 
	def genre_params(*args)
  		params.require(:genre).permit(*args)
	end 

end 