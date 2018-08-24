class GenresController < ApplicationController
	def index
		@genres = Genre.all
	end

	def show
		@genre = Genre.find(params[:id])
	end

	def new
		@genre = Genre.new
	end

	def create
	  @genre = Genre.new(post_params(:name))
	  @genre.save
	  redirect_to genre_path(@genre)
	end

	def edit
		@genre = Genre.find(params[:id])
	end

	def update
	  @genre = Genre.find(params[:id])
	  @genre.update(post_params(:name, :bio))
	  redirect_to genre_path(@genre)
	end

	private


	# We pass the permitted fields in as *args;
	# this keeps `post_params` pretty dry while
	# still allowing slightly different behavior
	# depending on the controller action
	def post_params(*args)
	  params.require(:genre).permit(*args)
	end
end
