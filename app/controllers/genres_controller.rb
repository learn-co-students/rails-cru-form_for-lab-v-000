class GenresController < ApplicationController
	before_action :genre_by_id, only: [:show, :edit, :update]

	def index
		@genres = Genre.all
	end

	def new
		@genre = Genre.new
	end

	def show
	end

	def create
		@genre = Genre.new(genre_params)
		if @genre.save
			redirect_to genre_path(@genre)
		else
			render :new
		end
	end

	def update	
		if @genre.update(genre_params)
			redirect_to genre_path(@genre)
		else
			render :edit
		end
	end

	private	
	def genre_params
		params.require(:genre).permit(:name)
	end

	def genre_by_id
		@genre = Genre.find(params[:id])
	end

end
