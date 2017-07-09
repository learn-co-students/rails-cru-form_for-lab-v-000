class GenresController < ApplicationController
  def index
 		@genres = Genre.all
 	end  
 
 	def show
 		@genre = Genre.find_by(id: params[:id])
 	end 
 
 	def new
 		@genre = Genre.new
 	end
 
 	def create
 		@genre = Genre.create(genre_params)
 		redirect_to genre_path(@genre)
 	end 
 
 	def edit
 		@genre = Genre.find_by_id(params[:id])
 	end 
 
 	def update
 		#binding.pry
 		@genre = Genre.find_by_id(params[:id])
 		@genre.update(genre_params)
 		redirect_to genre_path(@genre)
 	end 
 
 private
 	def genre_params
 		#binding.pry
 		params.require(:genre).permit(:name)
 	end
end
